import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/Constants/constants.dart';
import 'package:travel_buddy/Router/navigator.dart';
import 'package:travel_buddy/Views/IntroScreen/Widgets/intro_screen_data.dart';
import 'dart:math' as math;
import '../../Constants/assets.dart';
import '../../Constants/routes.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      body: Column(
        children: [
          SizedBox(
            height: 85.h,
            width: double.infinity,
            child: IntroductionScreen(
              globalBackgroundColor: Constants.primaryColor,
              pages: [
                PageViewModel(
                  // title: "",
                  decoration: const PageDecoration(
                    // pageColor: Constants.primaryColor,
                    boxDecoration: BoxDecoration(
                      color: Constants.primaryColor,
                    ),
                  ),
                  titleWidget: Column(
                    children: [
                      SizedBox(
                        height: 5.h,
                      ),
                      SizedBox(
                        width: 42.w,
                        child: AutoSizeText(
                          "Decide your destination",
                          style: GoogleFonts.roboto().copyWith(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  bodyWidget: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 42.w,
                        child: AutoSizeText(
                          "and find a ticket",
                          style: GoogleFonts.roboto().copyWith(
                              // fontSize: 19.sp,
                              ),
                          stepGranularity: 1.sp,
                          minFontSize: 17.sp,
                          maxLines: 1,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                        child: Row(
                          children: [],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                          color: Colors.white,
                          width: 0.2.h,
                        ))),
                        width: 80.w,
                        height: 25.h,
                        child: Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.rotationY(math.pi),
                          child: Image.asset(
                            Assets.destinationLogo,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),

                  // image: const Center(child: Icon(Icons.android)),
                )
              ],
              showSkipButton: true,
              showNextButton: false,
              skip: const Text("Skip"),
              done: const Text(""),
              onDone: () {
                // On button pressed

              },
            ),
          ),
          const LoginButton(),
        ],
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigation.instance.navigateAndRemoveUntil(Routes.loginScreen);
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 14.w,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 4.w,
          vertical: 0.5.h,
        ),
        child: Center(
          child: Text(
            "Login",
            style: GoogleFonts.roboto().copyWith(
              color: Colors.black,
              fontSize: 18.sp,
            ),
          ),
        ),
      ),
    );
  }
}
