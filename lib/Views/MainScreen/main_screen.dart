import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/Constants/assets.dart';
import 'package:travel_buddy/Constants/constants.dart';
import 'package:travel_buddy/Router/navigator.dart';
import 'package:travel_buddy/main.dart';

import '../../Constants/routes.dart';
import '../../Helper/storage.dart';
import 'Widgets/book_widget.dart';
import 'Widgets/from_to_widget.dart';
import 'Widgets/main_screen_appbar.dart';
import 'Widgets/main_screen_bottom_widget.dart';
import 'Widgets/recent_search_item.dart';
import 'Widgets/search_widget.dart';

class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({super.key});

  @override
  ConsumerState<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen> {
  final TextEditingController from = TextEditingController();
  final TextEditingController to = TextEditingController();
  int selected = 0;

  @override
  void dispose() {
    super.dispose();
    from.dispose();
    to.dispose();
  }

  @override
  void initState() {
    super.initState();
    fetchSeatDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(15.h),
        child: const MainScreenAppbar(),
      ),
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                // const MainScreenAppbar(),
                SizedBox(
                  height: 85.h,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          "Book your tickets",
                          style: GoogleFonts.roboto().copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp,
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        BookWidget(
                          from: from,
                          to: to,
                          selected: selected,
                          updateSelected: (int val) {
                            setState(() {
                              selected = val;
                            });
                          },
                        ),
                        SizedBox(
                          height: 1.5.h,
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigation.instance
                                  .navigate(Routes.bookingScreen);
                            },
                            child: const SearchWidget()),
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 7.w,
                            ),
                            Text(
                              "Recent Searches",
                              style: GoogleFonts.roboto().copyWith(
                                // fontWeight: FontWeight.bold,
                                color: Colors.black54,
                                fontSize: 16.sp,
                              ),
                            ),
                          ],
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
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return SizedBox(
                                width: 2.w,
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 7.w,
                            ),
                            Text(
                              "Latest Updates",
                              style: GoogleFonts.roboto().copyWith(
                                // fontWeight: FontWeight.bold,
                                color: Colors.black87,
                                fontSize: 16.sp,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 0.5.h,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 10.h,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return Container(
                                width: 35.w,
                                decoration: BoxDecoration(
                                  color: Constants.primaryColor,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return SizedBox(
                                width: 2.w,
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const MainScreenBottomWidget(),
    );
  }

  void fetchSeatDetails() async {
    final seats = await Storage.instance.getSeatData();
    ref.read(repositoryProvider).setSeatData(seats);
  }
}
