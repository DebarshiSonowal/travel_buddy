import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:ticket_widget/ticket_widget.dart';
import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';
// import 'package:timelines/timelines.dart';

import '../../Common/back_button.dart';
import '../../Constants/assets.dart';
import '../../Constants/constants.dart';
import '../MainScreen/Widgets/main_screen_bottom_widget.dart';
import 'Widgets/older_appbar.dart';

class OlderBookingScreen extends StatefulWidget {
  const OlderBookingScreen({super.key});

  @override
  State<OlderBookingScreen> createState() => _OlderBookingScreenState();
}

class _OlderBookingScreenState extends State<OlderBookingScreen> {
  List<TimelineModel> items = [
    TimelineModel(
      TicketWidget(
        margin: EdgeInsets.only(top: 1.h),
        width: 80.w,
        height: 20.h,
        child: Container(
          decoration: BoxDecoration(
            color: Constants.primaryColor,
          ),
        ),
      ),
      position: TimelineItemPosition.random,
    ),
    TimelineModel(
      TicketWidget(
        margin: EdgeInsets.only(top: 1.h),
        width: 80.w,
        height: 20.h,
        child: Container(
          decoration: BoxDecoration(
            color: Constants.primaryColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 35.w,
                height: double.infinity,
                child: Column(
                  children: [
                    Text(
                      "Itanagar",
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 15.sp,
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              DottedLine(
                lineLength: double.infinity,
                dashColor: Colors.black,
                direction: Axis.vertical,
              ),
              Container(
                width: 35.w,
                height: double.infinity,
                child: Column(
                  children: [],
                ),
              ),
            ],
          ),
        ),
      ),
      position: TimelineItemPosition.random,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(14.h),
        child: const olderAppBar(),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 2.w,
          vertical: 1.h,
        ),
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              Text(
                "Your Journey, Our Booking",
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 18.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Travel Smarter with Us",
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 15.sp,
                  color: Colors.black,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 90.h,
                child: DefaultTabController(
                  length: 2,
                  child: Column(
                    children: <Widget>[
                      ButtonsTabBar(
                        // Customize the appearance and behavior of the tab bar
                        backgroundColor: Colors.black,
                        unselectedBackgroundColor: Colors.white,
                        borderWidth: 0.1.h,
                        borderColor: Colors.black,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 4.w, vertical: 1.h),
                        labelStyle: GoogleFonts.roboto().copyWith(
                          fontSize: 11.sp,
                          color: Colors.white,
                          // fontWeight: FontWeight.bold,
                        ),
                        unselectedLabelStyle: GoogleFonts.roboto().copyWith(
                          fontSize: 11.sp,
                          color: Colors.black,
                          // fontWeight: FontWeight.bold,
                        ),
                        // Add your tabs here
                        tabs: const [
                          Tab(
                            text: "Completed",
                          ),
                          Tab(
                            text: "Cancelled",
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            SizedBox(
                              height: 90.h,
                              width: double.infinity,
                              child: Timeline(
                                children: [
                                  TimelineModel(
                                    TicketWidget(
                                      margin: EdgeInsets.only(top: 1.h),
                                      width: 85.w,
                                      height: 20.h,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Constants.primaryColor,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 2.w,
                                                vertical: 1.h,
                                              ),
                                              width: 35.w,
                                              height: double.infinity,
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: double.infinity,
                                                    height: 14.h,
                                                    child: Row(
                                                      children: [
                                                        Container(
                                                          height:
                                                              double.infinity,
                                                          width: 15.w,
                                                          child: Column(
                                                            children: [
                                                              Text(
                                                                "Itanagar",
                                                                style: GoogleFonts
                                                                        .roboto()
                                                                    .copyWith(
                                                                  fontSize:
                                                                      15.sp,
                                                                  color: Colors
                                                                      .black,
                                                                  // fontWeight: FontWeight.bold,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          height:
                                                              double.infinity,
                                                          width: 15.w,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: double.infinity,
                                                    height: 3.h,
                                                    child: Center(
                                                      child: Text(
                                                        "Fare: ₹1280",
                                                        style:
                                                            GoogleFonts.roboto()
                                                                .copyWith(
                                                          fontSize: 15.sp,
                                                          color: Colors.black,
                                                          // fontWeight: FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            DottedLine(
                                              lineLength: double.infinity,
                                              dashColor: Colors.black,
                                              direction: Axis.vertical,
                                            ),
                                            Container(
                                              width: 35.w,
                                              height: double.infinity,
                                              child: Column(
                                                children: [],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    position: TimelineItemPosition.random,
                                  ),
                                  TimelineModel(
                                    TicketWidget(
                                      margin: EdgeInsets.only(top: 1.h),
                                      width: 85.w,
                                      height: 20.h,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Constants.primaryColor,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 2.w,
                                                vertical: 1.h,
                                              ),
                                              width: 35.w,
                                              height: double.infinity,
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: double.infinity,
                                                    height: 14.h,
                                                    child: Row(
                                                      children: [
                                                        Container(
                                                          height:
                                                              double.infinity,
                                                          width: 15.w,
                                                          child: Column(
                                                            children: [
                                                              Text(
                                                                "Itanagar",
                                                                style: GoogleFonts
                                                                        .roboto()
                                                                    .copyWith(
                                                                  fontSize:
                                                                      15.sp,
                                                                  color: Colors
                                                                      .black,
                                                                  // fontWeight: FontWeight.bold,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          height:
                                                              double.infinity,
                                                          width: 15.w,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: double.infinity,
                                                    height: 3.h,
                                                    child: Center(
                                                      child: Text(
                                                        "Fare: ₹1280",
                                                        style:
                                                            GoogleFonts.roboto()
                                                                .copyWith(
                                                          fontSize: 15.sp,
                                                          color: Colors.black,
                                                          // fontWeight: FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            DottedLine(
                                              lineLength: double.infinity,
                                              dashColor: Colors.black,
                                              direction: Axis.vertical,
                                            ),
                                            Container(
                                              width: 35.w,
                                              height: double.infinity,
                                              child: Column(
                                                children: [],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    position: TimelineItemPosition.random,
                                  ),
                                ],
                                position: TimelinePosition.Left,
                              ),
                            ),
                            SizedBox(
                              height: 90.h,
                              width: double.infinity,
                              child: Timeline(
                                lineColor: Constants.selected,
                                iconSize: 10.sp,
                                children: items,
                                position: TimelinePosition.Left,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const MainScreenBottomWidget(),
    );
  }
}
