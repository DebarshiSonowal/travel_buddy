import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/Constants/constants.dart';
import 'package:travel_buddy/Models/ContactDetails/contact_details.dart';

import '../../../Models/basic_info.dart';
import '../../../main.dart';
import 'add_passenger_card.dart';

class PassengerListWidget extends ConsumerStatefulWidget {
  const PassengerListWidget(this.contactDetails, this.addContactDetails, {super.key});
  final List<ContactDetails> contactDetails;
  final Function(ContactDetails val) addContactDetails;
  @override
  ConsumerState<PassengerListWidget> createState() =>
      _PassengerListWidgetState();
}

class _PassengerListWidgetState extends ConsumerState<PassengerListWidget> {
  List<BasicInfo> passengers = [
    BasicInfo("Debarshi Sonowal", 10, 22, true),
  ];
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    final selected = ref.watch(repositoryProvider).selectedLayouts;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 3.w,
        vertical: 0.8.h,
      ),
      // height: 15.h,
      width: double.infinity,
      child: ListView.separated(
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          final item = selected[index];
          if (index >= widget.contactDetails.length) {
            return AddPassengerCard(
              // nameController: nameController,
              // ageController: ageController,
              onTap: (int val, String name, String age) {
                // ref.read(repositoryProvider).addContactDetails(
                //       ContactDetails(
                //           item.row.toString(),
                //           item.column.toString(),
                //           name,
                //           "",
                //           false,
                //           val,
                //           int.parse(age),
                //           ""),
                //     );
                setState(() {
                  widget.addContactDetails(ContactDetails(
                      item.row.toString(),
                      item.column.toString(),
                      name,
                      "",
                      false,
                      val,
                      int.parse(age),
                      ""));
                });
              },
              refreshUpdate: () {
                setState(() {});
              },
              seatNumber: "${item.row}${item.column}",
              index: index,
            );
          } else {
            return Container();
          }
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 0.5.h,
          );
        },
        // itemCount: ref.watch(repositoryProvider).selectedLayouts.length,
        itemCount: ref.watch(repositoryProvider).selectedLayouts.length,
      ),
    );
  }
}
