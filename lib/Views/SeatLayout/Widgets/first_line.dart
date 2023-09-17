import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/Views/SeatLayout/Widgets/seat_image.dart';

import '../../../Constants/assets.dart';

class FirstLine extends StatelessWidget {
  const FirstLine({
    super.key,
    required this.selected,
    required this.onTap,
    required this.id,
  });

  final int id;
  final List<int> selected;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 3.w,
      ),
      height: 8.h,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SeatImage(
            demo: false,
            isSelected: false,
            occupied: false,
            onTap: (int val) {
              onTap(val);
            },
            id: id,
          ),
          Image.asset(
            Assets.steeringLogo,
            scale: 9,
          ),
          // Icon(
          //   Icons.,
          // ),
        ],
      ),
    );
  }
}