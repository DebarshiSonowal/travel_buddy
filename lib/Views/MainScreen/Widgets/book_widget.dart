import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../Constants/constants.dart';
import 'from_to_widget.dart';

class BookWidget extends StatelessWidget {
  const BookWidget({
    super.key,
    required this.from,
    required this.to,
  });

  final TextEditingController from;
  final TextEditingController to;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 5.w,
      ),
      height: 25.h,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffdcdcdc),
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          FromToWidget(controller: from, hint: "From"),
          const Divider(),
          FromToWidget(controller: to, hint: "To"),
          const Divider(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 2.w,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.calendar_month,
                  size: 25.sp,
                ),
                SizedBox(
                  width: 2.w,
                ),
                SizedBox(
                  width: 22.w,
                  child: Column(
                    children: [
                      Text(
                        "Date of journey",
                        style: GoogleFonts.roboto()
                            .copyWith(fontSize: 8.sp, color: Colors.black45),
                      ),
                      Text(
                        "Mon, 04 Sep",
                        style: GoogleFonts.roboto().copyWith(
                          fontSize: 11.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 4.w,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Constants.primaryColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  width: 23.w,
                  height: 5.5.h,
                  child: Center(
                    child: Text(
                      "Today",
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 11.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 2.w,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  width: 23.w,
                  height: 5.5.h,
                  child: Center(
                    child: Text(
                      "Tomorrow",
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 11.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}