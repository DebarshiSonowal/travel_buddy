import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:sizer/sizer.dart';
// import 'package:social_login_buttons/social_login_buttons.dart';
import 'package:travel_buddy/Constants/assets.dart';
import 'package:travel_buddy/Constants/constants.dart';
import 'package:travel_buddy/Constants/routes.dart';
import 'package:travel_buddy/Router/navigator.dart';
import 'package:travel_buddy/Services/api_provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController? controller = TextEditingController();

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

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
                  bottom: Radius.circular(120),
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
                    controller: controller,
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
                    height: 1.5.h,
                  ),
                  SizedBox(
                    height: 6.h,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                      onPressed: () {

                        loginOTP(controller?.text);
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
                      "A 6 digit OTP will be sent via SMS to",
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 9.sp,
                        color: Colors.black45,
                        // fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Center(
                    child: Text(
                      "verify your mobile number",
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 9.sp,
                        color: Colors.black45,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     SizedBox(
                  //       width:15.w,
                  //       height: 15.w,
                  //       child: FlutterSocialButton(
                  //         onTap: () {},
                  //         mini: true,
                  //         buttonType: ButtonType.google, // Button type for different type buttons
                  //         iconColor: Colors.white,  // for change icons colors
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  SizedBox(
                    height: 2.h,
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

  Future<void> loginOTP(String? mobile) async {
    final response = await ApiProvider.instance.sendOTP(mobile!);
    if(response.status??false) {
      Navigation.instance.navigate(Routes.otpScreen);
    }else{

    }
  }
}
