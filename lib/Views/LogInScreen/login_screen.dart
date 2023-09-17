import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/Constants/assets.dart';
import 'package:travel_buddy/Constants/constants.dart';
import 'package:travel_buddy/Constants/routes.dart';
import 'package:travel_buddy/Router/navigator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 45.h,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Constants.primaryColor,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(125),
                ),
              ),
              child: Image.asset(Assets.loginLogo),
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              height: 50.h,
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
              ),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 4.w,
                    ),
                    child: Text(
                      "Your Phone!",
                      style: GoogleFonts.roboto().copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 4.w,
                    ),
                    child: Text(
                      "Phone Number!",
                      style: GoogleFonts.roboto().copyWith(
                        // fontWeight: FontWeight.bold,
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  IntlPhoneField(
                    flagsButtonPadding: EdgeInsets.only(
                      left: 4.w,
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      filled: true,
                      hintStyle: GoogleFonts.roboto().copyWith(
                        // fontWeight: FontWeight.bold,
                        fontSize: 11.sp,
                        color: Colors.black45,
                      ),
                      hintText: "Enter a 10 digit phone number",
                      fillColor: Constants.primaryColor,
                      counterText: "",
                    ),
                    dropdownTextStyle: GoogleFonts.roboto().copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 11.sp,
                      color: Colors.black,
                    ),
                    initialCountryCode: 'IN',
                    showCountryFlag: false,
                    dropdownIconPosition: IconPosition.trailing,
                    onChanged: (phone) {},
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  SizedBox(
                    height: 7.h,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                      onPressed: () {
                        Navigation.instance.navigate(Routes.otpScreen);
                      },
                      child: Text(
                        "GENERATE OTP",
                        style: GoogleFonts.roboto().copyWith(
                          color: Colors.white,
                          // fontWeight: FontWeight.bold,
                          fontSize: 13.sp,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Center(
                    child: Text(
                      "A 6 digit OTP will be sent via message to\n verify your mobile number",
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 9.sp,
                        color: Colors.black45,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Center(
                    child: Text(
                      "By Signing up, you are agreeing to our",
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 10.sp,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){

                    },
                    child: Center(
                      child: Text(
                        "Terms and Conditions & Privacy Policy",
                        style: GoogleFonts.roboto().copyWith(
                          fontSize: 11.sp,
                          color: Colors.blue,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
