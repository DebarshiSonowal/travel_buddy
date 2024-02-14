import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/Common/back_button.dart';
import 'package:travel_buddy/Constants/constants.dart';
import 'package:travel_buddy/main.dart';

import '../../Constants/assets.dart';
import '../../Constants/routes.dart';
import '../../Models/ContactDetails/contact_details.dart';
import '../../Router/navigator.dart';
import '../../Services/api_provider.dart';
import '../../Services/data_provider.dart';
import '../../Widgets/loading_dialog.dart';
import '../SeatLayout/Widgets/proceed_button.dart';
import 'Widgets/contact_details.dart';
import 'Widgets/pessengerInfoAppBar.dart';
import 'Widgets/scroll_widget.dart';
import 'Widgets/vehicle_info.dart';

class PassengerInfo extends ConsumerStatefulWidget {
  const PassengerInfo({super.key});

  @override
  ConsumerState<PassengerInfo> createState() => _PassengerInfoState();
}

class _PassengerInfoState extends ConsumerState<PassengerInfo> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController whatsappController = TextEditingController();
  int is_ensured = 0;
  List<ContactDetails> contactDetails = [];

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final response = ref.read(repositoryProvider);
    final layout = ref.watch(searchLayoutProvider);
    return Scaffold(
      backgroundColor: Colors.white,
      body: layout.when(
        data: (data) {
          return SafeArea(
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: Column(
                  children: [
                    const PassengerInfoAppbar(),
                    ScrollWidget(
                      contactDetails: contactDetails,
                      is_insured: is_ensured,
                      updateInsured: (int val) {
                        setState(() {
                          is_ensured = val;
                        });
                      },
                      updateContactDetails: (int index, ContactDetails val) {
                        setState(() {
                          contactDetails[index] = val;
                        });
                      },
                      addContactDetails: (ContactDetails val) {
                        debugPrint(
                            "Add contact details ${val.row} ${val.col} ${val.passenger_name}");
                        setState(() {
                          contactDetails.add(val);
                        });
                        ref.read(repositoryProvider).addContactDetails(val);
                      },
                      //8638372157
                      //7896208559
                      // nameController: nameController, mobileController: mobileController, whatsappController: whatsappController
                    ),
                    Container(
                      height: 8.h,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ProceedButton(
                            title: "Total Amount ₹1280",
                            onTap: () {
                              if (contactDetails.isNotEmpty &&
                                  is_ensured != 0) {
                                bookTheSeats(
                                  data.data?.trip_id,
                                  is_ensured,
                                  contactDetails.map((i) {
                                    return {
                                      "row": i.row,
                                      "col": i.col,
                                      "passenger_name": i.passenger_name,
                                      "passenger_contact": i.passenger_contact,
                                    };
                                  }).toList(),
                                );
                              } else {
                                Fluttertoast.showToast(
                                    msg:
                                        "Enter all the details ${response.contactDetails.length}");
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        error: (err, s) {
          debugPrint(err.toString());
          return Container();
        },
        loading: () => Center(
          child: LoadingDialog(),
        ),
      ),
    );
  }

  // List<dynamic> getSelectedList(List<> selected) {
  //   List<Map<String, dynamic>> list = [];
  //   for (var i in selected) {
  //     Map<String, dynamic> map = {
  //       "row": i.row,
  //       "col": i.column,
  //     };
  //     list.add(
  //       map,
  //     );
  //   }
  //   return list;
  // }

  Future<void> bookTheSeats(trip_id, is_insured, seats) async {
    final response1 = await ApiProvider().bookSeats(trip_id, is_insured, seats);
    if (response1.success ?? false) {
      ref.read(repositoryProvider).setBookingData(response1.data);
      final response = Navigation.instance.navigate(Routes.paymentScreen);
      if (response == null) {
        // ref.read(repositoryProvider).clearContactDetails();
      } else {
        // ref.read(repositoryProvider).clearContactDetails();
      }
    } else {
      Fluttertoast.showToast(
          msg: response1.message ?? "Seats are not available");
    }
  }
}
