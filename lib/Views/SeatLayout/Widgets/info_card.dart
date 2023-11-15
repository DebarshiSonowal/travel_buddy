import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'seat_layout_image.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 4.w,
          vertical: 0.5.h,
        ),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        width: 80.w,
        // height: 10.h,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SeatLayoutImage(
              name: "Available",
              type:0,
            ),
            SeatLayoutImage(
              name: "Selected",
              type:1,
            ),
            SeatLayoutImage(
              name: "Occupied",
              type:2,
            ),
            SeatLayoutImage(
              name: "Male",
              type:3,
            ),
            SeatLayoutImage(
              name: "Female",
              type:4,
            ),
          ],
        ),
      ),
    );
  }
}