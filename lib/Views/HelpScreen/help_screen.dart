import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/Views/MainScreen/Widgets/main_screen_bottom_widget.dart';

import '../../Common/back_button.dart';
import '../../Constants/assets.dart';
import '../../Constants/constants.dart';
import '../BookingConfirmation/Widgets/booking_confirmation_appbar.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(17.h),
        child: const HelpAppBar(),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: 2.w,
          vertical: 1.h,
        ),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 4.w,
                ),
                Text(
                  "FAQ!",
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 20.sp,
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ],
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
          ],
        ),
      ),
      bottomNavigationBar: const MainScreenBottomWidget(),
    );
  }
}

class HelpAppBar extends StatelessWidget {
  const HelpAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
              "Help!",
              style: GoogleFonts.roboto().copyWith(
                fontSize: 20.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
