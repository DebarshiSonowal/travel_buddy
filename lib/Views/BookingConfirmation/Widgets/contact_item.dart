import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../Models/ContactDetails/contact_details.dart';

class ContactItem extends StatelessWidget {
  const ContactItem({
    super.key,
    required this.item,
  });

  final ContactDetails item;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle,
          ),
          height: 25.sp,
          width: 25.sp,
        ),
        SizedBox(
          width: 2.5.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 14.w,
                  child: Text(
                    "${item.passenger_name}",
                    style: GoogleFonts.roboto().copyWith(
                      fontSize: 9.sp,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "(${item.gender == 0 ? "M" : item.gender == 1 ? "F" : "O"}, ${item.age})",
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 9.sp,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Text(
              "${item.col}${item.row} Seater",
              style: GoogleFonts.roboto().copyWith(
                fontSize: 8.sp,
                color: Colors.black87,
                // fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
