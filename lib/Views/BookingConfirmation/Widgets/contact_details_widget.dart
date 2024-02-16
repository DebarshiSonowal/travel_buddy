import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/main.dart';

class ContactDetailsWidget extends ConsumerWidget {
  const ContactDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final data = ref.watch(repositoryProvider);
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 6.w,
        vertical: 1.5.h,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Contact Details",
            style: GoogleFonts.roboto().copyWith(
              fontSize: 11.sp,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 0.5.h,
          ),
          Text(
            "Email",
            style: GoogleFonts.roboto().copyWith(
              fontSize: 9.sp,
              color: Colors.black87,
              // fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            data.customSeatData?.counter_info?.contact_name??"",
            style: GoogleFonts.roboto().copyWith(
              fontSize: 8.sp,
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 0.5.h,
          ),
          Text(
            "Mobile No",
            style: GoogleFonts.roboto().copyWith(
              fontSize: 9.sp,
              color: Colors.black87,
              // fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "${data.customSeatData?.counter_info?.contact_number??""}",
            style: GoogleFonts.roboto().copyWith(
              fontSize: 8.sp,
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}