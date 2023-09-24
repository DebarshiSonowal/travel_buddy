import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/Common/back_button.dart';
import 'package:travel_buddy/Constants/constants.dart';

import '../../Constants/assets.dart';
import '../../Constants/routes.dart';
import '../../Router/navigator.dart';
import '../SeatLayout/Widgets/proceed_button.dart';
import 'Widgets/contact_details.dart';
import 'Widgets/pessengerInfoAppBar.dart';
import 'Widgets/scroll_widget.dart';
import 'Widgets/vehicle_info.dart';

class PassengerInfo extends StatefulWidget {
  const PassengerInfo({super.key});

  @override
  State<PassengerInfo> createState() => _PassengerInfoState();
}

class _PassengerInfoState extends State<PassengerInfo> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController whatsappController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                const PassengerInfoAppbar(),
                ScrollWidget(nameController: nameController, mobileController: mobileController, whatsappController: whatsappController),
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
                          Navigation.instance.navigate(Routes.paymentScreen);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}









