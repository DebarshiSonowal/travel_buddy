import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/Constants/constants.dart';

import '../../../Models/basic_info.dart';
import 'add_passenger_card.dart';

class PassengerListWidget extends StatefulWidget {
  const PassengerListWidget({super.key});

  @override
  State<PassengerListWidget> createState() => _PassengerListWidgetState();
}

class _PassengerListWidgetState extends State<PassengerListWidget> {
  List<BasicInfo> passengers = [
    BasicInfo("Debarshi Sonowal", 10, 22, true),
  ];
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
          return AddPassengerCard(
            nameController: nameController,
            onTap: () {},
            refreshUpdate: () {
              setState(() {});
            },
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 0.5.h,
          );
        },
        itemCount: passengers.length,
      ),
    );
  }
}
