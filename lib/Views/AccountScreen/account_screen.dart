import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
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
        preferredSize: Size.fromHeight(15.h),
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
                    fontSize: 17.sp,
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
                    fontSize: 18.sp,
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ExpansionTile(
                title: Text(
                  "Help",
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 18.sp,
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ExpansionTile(
                title: Text(
                  "Call Support",
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 18.sp,
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ExpansionTile(
                title: Text(
                  "About Us",
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 18.sp,
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ExpansionTile(
                title: Text(
                  "Privacy Policy",
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 18.sp,
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ExpansionTile(
                title: Text(
                  "Terms & Conditions",
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 18.sp,
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ExpansionTile(
                title: Text(
                  "Refund Policy",
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 18.sp,
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
                    height: 6.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      // shape: BoxShape.circle,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        "Log out",
                        style: GoogleFonts.roboto().copyWith(
                          fontSize: 12.sp,
                          color: Colors.white,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 6.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                      color: Constants.primaryColor,
                      // shape: BoxShape.circle,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        "Delete Account",
                        style: GoogleFonts.roboto().copyWith(
                          fontSize: 12.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
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
        borderRadius: BorderRadius.circular(50),
      ),
      width: double.infinity,
      height: 11.h,
      child: Row(
        children: [
          Container(
            height: 7.h,
            width: 7.h,
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
              fontSize: 16.sp,
              color: Colors.white,
              // fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
