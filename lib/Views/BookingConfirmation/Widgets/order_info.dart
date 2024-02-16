import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/main.dart';

class OrderInfo extends ConsumerWidget{
  const OrderInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final data = ref.watch(repositoryProvider);
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.w,
        vertical: 1.5.h,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ticket Id:",
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 10.sp,
                  color: Colors.black54,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "${data.customSeatData?.ticket_id}",
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 10.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ticket No:",
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 10.sp,
                  color: Colors.black54,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "${data.customSeatData?.ticket_number}",
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 10.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}