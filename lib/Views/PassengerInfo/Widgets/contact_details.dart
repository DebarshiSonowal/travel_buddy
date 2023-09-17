import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../Constants/constants.dart';

class ContactDetails extends StatelessWidget {
  const ContactDetails({
    super.key,
    required this.nameController,
    required this.mobileController,
    required this.whatsappController,
  });

  final TextEditingController nameController;
  final TextEditingController mobileController;
  final TextEditingController whatsappController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 4.w,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 4.w,
        vertical: 0.8.h,
      ),
      decoration: BoxDecoration(
        color: Constants.blackColor,
        borderRadius: BorderRadius.circular(20),
      ),
      width: double.infinity,
      height: 19.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Contact Details",
            style: GoogleFonts.roboto().copyWith(
              fontSize: 12.sp,
              color: const Color(0xffdbdbdb),
              // fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 4.h,
            child: TextField(
              controller: nameController,
              style: GoogleFonts.roboto().copyWith(
                fontSize: 9.sp,
                color: Colors.white,
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
                  color: const Color(0xff747474),

                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 0.5.h,
          ),
          Row(
            children: [
              Text(
                "+91",
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 9.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 2.w,
              ),
              Container(
                height: 4.h,
                width: 0.3.w,
                color: const Color(0xff747474),
              ),
              SizedBox(
                width: 2.w,
              ),
              SizedBox(
                height: 3.h,
                width: 27.w,
                child: TextField(
                  controller: mobileController,
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 9.sp,
                    color: Colors.white,
                    // fontWeight: FontWeight.bold,
                  ),
                  keyboardType: TextInputType.phone,
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
                    hintText: "Phone",
                    hintStyle: GoogleFonts.roboto().copyWith(
                      fontSize: 8.sp,
                      color: const Color(0xff747474),

                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 4.w,
              ),
              const Icon(
                FontAwesomeIcons.whatsapp,
                color: Colors.white,
              ),
              SizedBox(
                width: 1.w,
              ),
              Text(
                "+91",
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 9.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 1.w,
              ),
              Container(
                height: 4.h,
                width: 0.3.w,
                color: const Color(0xff747474),
              ),
              SizedBox(
                width: 1.w,
              ),
              SizedBox(
                height: 3.h,
                width: 27.w,
                child: TextField(
                  controller: whatsappController,
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 9.sp,
                    color: Colors.white,
                    // fontWeight: FontWeight.bold,
                  ),
                  keyboardType: TextInputType.phone,
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
                    hintText: "Whatsapp",
                    hintStyle: GoogleFonts.roboto().copyWith(
                      fontSize: 8.sp,
                      color: const Color(0xff747474),

                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: true,
                onChanged: (val) {},
                checkColor: Colors.white,
                activeColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                side: MaterialStateBorderSide.resolveWith(
                      (states) => const BorderSide(width: 1.0, color: Colors.white),
                ),
              ),
              Text(
                "Send Booking Details to Whatsapp",
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 9.sp,
                  color: Colors.white,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}