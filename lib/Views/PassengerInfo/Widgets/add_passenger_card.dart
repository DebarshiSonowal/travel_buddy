import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../Constants/constants.dart';

class AddPassengerCard extends StatefulWidget {
  AddPassengerCard({
    super.key,
    // required this.nameController,
    required this.onTap,
    required this.refreshUpdate,
    required this.seatNumber,
    required this.index,
    // required this.ageController,
  });

  // final TextEditingController nameController, ageController;
  final Function(int, String, String) onTap;
  final Function refreshUpdate;
  final String seatNumber;
  final int index;

  @override
  State<AddPassengerCard> createState() => _AddPassengerCardState();
}

class _AddPassengerCardState extends State<AddPassengerCard> {
  int isMale = 1;
  final nameController = TextEditingController();
  final ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(
        horizontal: 4.w,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 3.w,
          vertical: 0.5.h,
        ),
        width: double.infinity,
        // height: 17.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Add Passengers",
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 9.sp,
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // passengers.add(BasicInfo(name, seat, age, isMale))
                    if (nameController.text.isNotEmpty &&
                        ageController.text.isNotEmpty) {
                      widget.onTap(
                        isMale,
                        nameController.text,
                        ageController.text,
                      );
                    } else {
                      Fluttertoast.showToast(
                          msg: "Please Enter All Of Your Details");
                    }
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Constants.primaryColor,
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              "Passenger ${widget.index + 1}",
              style: GoogleFonts.roboto().copyWith(
                fontSize: 8.sp,
                color: Colors.black,
                // fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 4.h,
                  width: 60.w,
                  child: TextField(
                    controller: nameController,
                    style: GoogleFonts.roboto().copyWith(
                      fontSize: 7.sp,
                      color: Colors.black,
                      // fontWeight: FontWeight.bold,
                    ),
                    cursorColor: const Color(0xff747474),
                    decoration: InputDecoration(
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff747474),
                        ),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff747474),
                        ),
                      ),
                      hintText: "Name",
                      hintStyle: GoogleFonts.roboto().copyWith(
                        fontSize: 8.sp,
                        color: Colors.black54,

                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Text(
                  "Seat",
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 9.sp,
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 1.w,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.black87,
                    ),
                  ),
                  padding:
                      EdgeInsets.symmetric(horizontal: 2.w, vertical: 0.1.w),
                  child: Text(
                    widget.seatNumber,
                    style: GoogleFonts.roboto().copyWith(
                      fontSize: 9.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 0.2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 40.w,
                  height: 5.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Gender",
                        style: GoogleFonts.roboto().copyWith(
                          fontSize: 9.sp,
                          color: Colors.black,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 2.h,
                            width: 4.w,
                            child: Radio(
                              value: 1,
                              onChanged: (val) {
                                setState(() {
                                  debugPrint("Changed $val");
                                  isMale = val!;
                                });
                              },
                              groupValue: isMale,
                            ),
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Text(
                            "Male",
                            style: GoogleFonts.roboto().copyWith(
                              fontSize: 7.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                          SizedBox(
                            height: 2.h,
                            width: 4.w,
                            child: Radio(
                              value: 2,
                              onChanged: (val) {
                                setState(() {
                                  debugPrint("Changed1 $val");
                                  isMale = val!;
                                });
                                // refreshUpdate();
                              },
                              groupValue: isMale,
                            ),
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Text(
                            "Female",
                            style: GoogleFonts.roboto().copyWith(
                              fontSize: 7.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 2.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Age",
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 8.sp,
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                      width: 8.w,
                      child: TextField(
                        controller: ageController,
                        style: GoogleFonts.roboto().copyWith(
                          fontSize: 7.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        cursorColor: const Color(0xff747474),
                        decoration: InputDecoration(
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff747474),
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff747474),
                            ),
                          ),
                          hintText: "Age",
                          hintStyle: GoogleFonts.roboto().copyWith(
                            fontSize: 8.sp,
                            color: Colors.black54,

                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
