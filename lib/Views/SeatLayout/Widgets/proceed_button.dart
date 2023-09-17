import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../Constants/constants.dart';

class ProceedButton extends StatelessWidget {
  const ProceedButton({
    super.key,
    required this.onTap,
    this.title,
  });

  final Function onTap;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title ?? "Proceed",
            style: GoogleFonts.roboto().copyWith(
              fontSize: title==null?17.sp:12.sp,
              color: Colors.white,
              // fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: title==null?2.w:4.w,
          ),
          Container(
            padding: EdgeInsets.all(1.w),
            decoration: const BoxDecoration(
              color: Constants.primaryColor,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.arrow_forward,
              color: Colors.black,
              size: 15.sp,
            ),
          ),
        ],
      ),
    );
  }
}
