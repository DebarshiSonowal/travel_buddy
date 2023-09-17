import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../Constants/constants.dart';



class SeatImage extends StatelessWidget {
  const SeatImage({
    super.key,
    required this.occupied,
    required this.isSelected,
    required this.demo,
    required this.onTap,
    required this.id,
  });

  final int id;
  final bool occupied;
  final bool isSelected, demo;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: demo
          ? null
          : () {
        onTap(id);
      },
      child: Container(
        height: demo ? 5.h : 6.h,
        width: demo ? 8.w : 10.w,
        decoration: BoxDecoration(
          color: occupied
              ? Colors.white
              : (!isSelected ? Colors.white : Constants.selected),
          border: Border.all(
            color: occupied
                ? Constants.occupied
                : (!isSelected ? Constants.selected : Constants.selectedBorder),
            width: 0.5.w,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            SizedBox(
              height: demo ? 2.5.h : 3.5.h,
            ),
            Divider(
              thickness: 0.5.w,
              color: occupied
                  ? Constants.occupied
                  : (!isSelected ? Constants.selected : Constants.selectedBorder),
            ),
          ],
        ),
      ),
    );
  }
}