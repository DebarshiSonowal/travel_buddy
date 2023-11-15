import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/Constants/assets.dart';

import '../../../Constants/constants.dart';

class SeatImage extends StatelessWidget {
  const SeatImage({
    super.key,
    // required this.occupied,
    // required this.isSelected,
    // required this.demo,
    required this.onTap,
    required this.id,
    required this.type,
  });

  final int id, type;

  // final bool occupied;
  // final bool isSelected, demo;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(id);
      },
      child: SizedBox(
        height: 4.h,
        width: 8.w,
        child: Image.asset(selectedImage(type)),
        // decoration: BoxDecoration(
        //   color: occupied
        //       ? Colors.white
        //       : (!isSelected ? Colors.white : Constants.selected),
        //   border: Border.all(
        //     color: occupied
        //         ? Constants.occupied
        //         : (!isSelected ? Constants.selected : Constants.selectedBorder),
        //     width: 0.5.w,
        //   ),
        //   borderRadius: BorderRadius.circular(10),
        // ),
        // child: Column(
        //   children: [
        //     SizedBox(
        //       height: demo ? 2.5.h : 3.5.h,
        //     ),
        //     Divider(
        //       thickness: 0.5.w,
        //       color: occupied
        //           ? Constants.occupied
        //           : (!isSelected ? Constants.selected : Constants.selectedBorder),
        //     ),
        //   ],
        // ),
      ),
    );
  }

  String selectedImage(int type) {
    switch (type) {
      case 1:
        // do something else
        return Assets.seatSelectedLogo;
      case 2:
        return Assets.seatOccupiedLogo;
      case 3:
        return Assets.seatMaleLogo;
      case 4:
        return Assets.seatWomenLogo;
      default:
        return Assets.seatAvailableLogo;
    }
  }
}
