import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/Constants/assets.dart';
import 'package:travel_buddy/Views/SeatLayout/Widgets/seat_image.dart';

import '../../../Constants/constants.dart';

class SeatLayoutImage extends StatelessWidget {
  const SeatLayoutImage({
    super.key,
    required this.name, required this.type,
    // required this.selected,
    // required this.occupied,
  });

  final String name;
  // final bool selected, occupied;
  final int type;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // SeatImage(
        //   occupied: occupied,
        //   isSelected: selected,
        //   demo: true,
        //   onTap: (int val) {
        //
        //   },
        //   id: 0,
        // ),
        Image.asset(
          selectedImage(type),
          height: 4.h,
          width: 6.w,
        ),
        Text(
          name,
          style: GoogleFonts.roboto().copyWith(
            fontSize: 8.sp,
            color: Colors.black,
            // fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

String selectedImage(int type) {
  switch (type) {
    case 0:
    // do something
      return Assets.seatAvailableLogo;
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
      return Assets.seatLogo;
  }
}
