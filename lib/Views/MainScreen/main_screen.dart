import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/Constants/assets.dart';
import 'package:travel_buddy/Constants/constants.dart';
import 'package:travel_buddy/Router/navigator.dart';

import '../../Constants/routes.dart';
import 'Widgets/book_widget.dart';
import 'Widgets/from_to_widget.dart';
import 'Widgets/main_screen_appbar.dart';
import 'Widgets/main_screen_bottom_widget.dart';
import 'Widgets/recent_search_item.dart';
import 'Widgets/search_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final TextEditingController from = TextEditingController();
  final TextEditingController to = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    from.dispose();
    to.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const MainScreenAppbar(),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "Book your tickets",
                  style: GoogleFonts.roboto().copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.sp,
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                BookWidget(from: from, to: to),
                SizedBox(
                  height: 1.5.h,
                ),
                GestureDetector(
                    onTap: () {
                      Navigation.instance.navigate(Routes.bookingScreen);
                    },
                    child: const SearchWidget()),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Recent Searches",
                  style: GoogleFonts.roboto().copyWith(
                    // fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  height: 0.5.h,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 7.h,
                  child: ListView.separated(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const ResentSearchItem();
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 2.w,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Latest Updates",
                  style: GoogleFonts.roboto().copyWith(
                    // fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  height: 0.5.h,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 8.h,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 35.w,
                        decoration: BoxDecoration(
                          color: Constants.primaryColor,
                          borderRadius: BorderRadius.circular(25),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 2.w,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 5.w,
                  ),
                  // decoration: BoxDecoration(
                  //   color: Colors.green,
                  //   borderRadius: BorderRadius.circular(15),
                  // ),
                  // height: 18.h,
                  width: double.infinity,
                  child: Image.asset(Assets.travelLogo),
                ),
                SizedBox(
                  height: 3.h,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const MainScreenBottomWidget(),
    );
  }
}
