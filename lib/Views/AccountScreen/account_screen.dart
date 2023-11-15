import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/Router/navigator.dart';
import 'package:travel_buddy/Views/MainScreen/Widgets/main_screen_bottom_widget.dart';

import '../../Common/back_button.dart';
import '../../Constants/assets.dart';
import '../../Constants/constants.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(13.h),
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 4.w,
              vertical: 1.5.h,
            ),
            decoration: const BoxDecoration(
              color: Constants.primaryColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
            ),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const BackButtonCustom(),
                    Image.asset(
                      Assets.colorLogo,
                      fit: BoxFit.fill,
                      scale: 22,
                    ),
                  ],
                ),
                Text(
                  "My Account",
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 13.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 8.w,
          vertical: 1.h,
        ),
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const RoundedBarAccount(),
              SizedBox(
                height: 2.h,
              ),
              ExpansionTile(
                title: Text(
                  "My Bookings",
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 12.sp,
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ExpansionTile(
                title: Text(
                  "Help",
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 12.sp,
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ExpansionTile(
                title: Text(
                  "Call Support",
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 12.sp,
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ExpansionTile(
                title: Text(
                  "About Us",
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 12.sp,
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ExpansionTile(
                title: Text(
                  "Privacy Policy",
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 12.sp,
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ExpansionTile(
                title: Text(
                  "Terms & Conditions",
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 12.sp,
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ExpansionTile(
                title: Text(
                  "Refund Policy",
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 12.sp,
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 4.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      // shape: BoxShape.circle,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Log out",
                        style: GoogleFonts.roboto().copyWith(
                          fontSize: 10.sp,
                          color: Colors.white,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showDeleteDialog(context);
                    },
                    child: Container(
                      height: 4.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                        color: Constants.primaryColor,
                        // shape: BoxShape.circle,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Delete Account",
                          style: GoogleFonts.roboto().copyWith(
                            fontSize: 10.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const MainScreenBottomWidget(),
    );
  }

  void showDeleteDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            alignment: Alignment.bottomCenter,
            backgroundColor: Colors.white,
            content: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 4.w,
                vertical: 2.h,
              ),
              width: 80.w,
              // height: 40.h,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 6.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      // shape: BoxShape.circle,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        "Keep My Account",
                        style: GoogleFonts.roboto().copyWith(
                          fontSize: 12.sp,
                          color: Colors.white,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigation.instance.goBack();
                      showConfirmationWidget(context);
                    },
                    child: Container(
                      height: 6.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Constants.primaryColor,
                        // shape: BoxShape.circle,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          "Delete My Account",
                          maxLines: 2,
                          style: GoogleFonts.roboto().copyWith(
                            fontSize: 12.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  void showConfirmationWidget(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            alignment: Alignment.bottomCenter,
            backgroundColor: Colors.transparent,
            content: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 8.w,
                vertical: 2.h,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              height: 18.h,
              width: 90.w,
              child: Center(
                child: Text(
                  "Are you sure you want to delete this account?",
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 14.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            actions: [
              Container(
                height: 5.h,
                width: 25.w,
                decoration: BoxDecoration(
                  color: Colors.black,
                  // shape: BoxShape.circle,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "No",
                    style: GoogleFonts.roboto().copyWith(
                      fontSize: 12.sp,
                      color: Colors.white,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 15.w,
              ),
              Container(
                height: 5.h,
                width: 25.w,
                decoration: BoxDecoration(
                  color: Constants.primaryColor,
                  // shape: BoxShape.circle,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "Yes",
                    maxLines: 2,
                    style: GoogleFonts.roboto().copyWith(
                      fontSize: 12.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          );
        });
  }
}

class RoundedBarAccount extends StatelessWidget {
  const RoundedBarAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 6.w,
      ),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(30),
      ),
      width: double.infinity,
      height: 6.h,
      child: Row(
        children: [
          Container(
            height: 4.5.h,
            width: 4.5.h,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(
            width: 4.w,
          ),
          Text(
            "Hi, John",
            style: GoogleFonts.roboto().copyWith(
              fontSize: 10.sp,
              color: Colors.white,
              // fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
