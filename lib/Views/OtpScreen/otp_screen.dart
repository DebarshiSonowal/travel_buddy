import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/Constants/assets.dart';
import 'package:travel_buddy/Constants/constants.dart';
import 'package:travel_buddy/Constants/routes.dart';
import 'package:travel_buddy/Helper/storage.dart';
import 'package:travel_buddy/Router/navigator.dart';
import 'package:travel_buddy/Services/api_provider.dart';

import '../../main.dart';

class OtpScreen extends ConsumerStatefulWidget {
  const OtpScreen({super.key, required this.mobile});

  final String mobile;

  @override
  ConsumerState<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends ConsumerState<OtpScreen> {
  final OtpFieldController otpTextController = OtpFieldController();
  String otp = "";
  Timer? timer;
  int time = 30;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      setTimer();
    });
  }

  void setTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (timer.tick == 30) {
        try {
          if (mounted) {
            setState(() {
              timer.cancel();
            });
          } else {
            timer.cancel();
          }
        } catch (e) {
          debugPrint(e.toString());
        }
      }
      if (mounted) {
        debugPrint(timer.tick.toString());
        try {
          setState(() {
            time = (30 - timer.tick);
          });
        } catch (e) {
          debugPrint(e.toString());
          time = (30 - timer.tick);
          setState(() {});
        }
      } else {
        debugPrint(timer.tick.toString());
        time = (30 - timer.tick);
        setState(() {});
      }
      // print("Dekhi 5 sec por por kisu hy ni :/");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 45.h,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(125),
                  ),
                ),
                child: Image.asset(
                  Assets.pickupLogo,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                height: 58.h,
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                  vertical: 2.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.w,
                      ),
                      child: Text(
                        "OTP Verification",
                        style: GoogleFonts.roboto().copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.w,
                      ),
                      child: Text(
                        "Enter the OTP you received",
                        style: GoogleFonts.roboto().copyWith(
                          fontSize: 10.sp,
                          color: Colors.black45,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.w,
                      ),
                      child: Text(
                        "+91 ${widget.mobile}",
                        style: GoogleFonts.roboto().copyWith(
                          fontSize: 12.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.w,
                      ),
                      child: Text(
                        "ONE TIME PASSWORD",
                        style: GoogleFonts.roboto().copyWith(
                          fontSize: 12.sp,
                          color: Colors.black45,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    OTPTextField(
                      controller: otpTextController,
                      length: 6,
                      width: MediaQuery.of(context).size.width,
                      fieldWidth: 8.w,
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 12.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      textFieldAlignment: MainAxisAlignment.spaceAround,
                      fieldStyle: FieldStyle.underline,
                      onCompleted: (pin) {
                        setState(() {
                          otp = pin;
                        });
                      },
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        time > 0
                            ? Text(
                                "Retry after: 00:$time",
                                style: GoogleFonts.roboto().copyWith(
                                  fontSize: 12.sp,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              )
                            : Container(),
                      ],
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    SizedBox(
                      height: 5.h,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black),
                            onPressed: () {
                              debugPrint("onPressed: ");
                              if (otp != "" && otp.length == 6) {
                                verifyOTP(widget.mobile, otp);
                              }
                            },
                            child: Text(
                              "VERIFY OTP",
                              style: GoogleFonts.roboto().copyWith(
                                color: Colors.white,
                                // fontWeight: FontWeight.bold,
                                fontSize: 11.sp,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black),
                            onPressed: () {
                              if (time <= 0) {
                                loginOTP(widget.mobile);

                              } else {
                                Fluttertoast.showToast(
                                    msg: "Please wait few more seconds");
                              }
                            },
                            child: Text(
                              "RESEND OTP",
                              style: GoogleFonts.roboto().copyWith(
                                color: Colors.white,
                                // fontWeight: FontWeight.bold,
                                fontSize: 11.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> verifyOTP(String mobile_no, String otp) async {
    final response = await ApiProvider().login(mobile_no, otp);
    if (response.status ?? false) {
      Storage.instance.setUser(response.token ?? "");
      Storage.instance.setSeatData(response.seats);
      ref.watch(repositoryProvider).setSeatData(response.seats);
      Navigation.instance.navigate(Routes.mainScreen);
    } else {
      Fluttertoast.showToast(msg: response.message ?? "Something went wrong");
    }
  }

  Future<void> loginOTP(String? mobile) async {
    final response = await ApiProvider().sendOTP(mobile!);
    if (response.status ?? false) {
      Fluttertoast.showToast(msg: response.message ?? "OTP Sent Successfully");
      setTimer();
    } else {
      Fluttertoast.showToast(msg: response.message ?? "Something went wrong");
    }
  }
}
