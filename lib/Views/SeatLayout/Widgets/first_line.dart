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
      height: 5.h,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SeatImage(
            type:0,
            onTap: (int val) {
              onTap(val);
            },
            id: id,
          ),
          Image.asset(
            Assets.steeringLogo,
            scale: 3,
            color: Colors.black,
          ),
          // Icon(
          //   Icons.,
          // ),
        ],
      ),
    );
  }
}
