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
        ),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        width: 80.w,
        height: 10.h,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SeatLayoutImage(
              name: "Available",
              selected: false,
              occupied: false,
            ),
            SeatLayoutImage(
              name: "Selected",
              selected: true,
              occupied: false,
            ),
            SeatLayoutImage(
              name: "Occupied",
              selected: true,
              occupied: true,
            ),
          ],
        ),
      ),
    );
  }
}