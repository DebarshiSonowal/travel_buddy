import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/Models/location_model.dart';
import 'package:travel_buddy/Services/api_provider.dart';
import 'package:travel_buddy/Services/data_provider.dart';
import 'package:travel_buddy/Widgets/loading_dialog.dart';

import '../../../Constants/constants.dart';
import 'from_to_widget.dart';

class BookWidget extends StatelessWidget {
  const BookWidget({
    super.key,
    required this.from,
    required this.to,
    required this.selected,
    required this.updateSelected,
  });

  final TextEditingController from;
  final TextEditingController to;
  final int selected;
  final Function(int) updateSelected;

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 6.w,
        vertical: 1.h,
      ),
      height: 23.h,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffdcdcdc),
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          FromToWidget(
            controller: from,
            hint: "From",
            list: searchFromProvider,
          ),
          const Divider(),
          FromToWidget(
            controller: to,
            hint: "To",
            list: searchToProvider,
          ),
          const Divider(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 2.w,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.calendar_month,
                  size: 22.sp,
                ),
                SizedBox(
                  width: 1.w,
                ),
                SizedBox(
                  width: 22.w,
                  child: Column(
                    children: [
                      Text(
                        "Date of journey",
                        style: GoogleFonts.roboto().copyWith(
                            fontSize: 7.sp, color: Colors.black45),
                      ),
                      Text(
                        "Mon, 04 Sep",
                        style: GoogleFonts.roboto().copyWith(
                          fontSize: 9.sp,
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
                GestureDetector(
                  onTap: () {
                    updateSelected(0);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: selected == 0
                          ? Constants.primaryColor
                          : Colors.black,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    width: 23.w,
                    height: 5.5.h,
                    child: Center(
                      child: Text(
                        "Today",
                        style: GoogleFonts.roboto().copyWith(
                          fontSize: 11.sp,
                          color:
                          selected == 0 ? Colors.black : Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 2.w,
                ),
                GestureDetector(
                  onTap: () {
                    updateSelected(1);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: selected == 1
                          ? Constants.primaryColor
                          : Colors.black,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    width: 23.w,
                    height: 5.5.h,
                    child: Center(
                      child: Text(
                        "Tomorrow",
                        style: GoogleFonts.roboto().copyWith(
                          fontSize: 11.sp,
                          color:
                          selected == 1 ? Colors.black : Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
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
