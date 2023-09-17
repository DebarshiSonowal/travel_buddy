import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/Views/SeatLayout/Widgets/seat_image.dart';

import '../../../Constants/constants.dart';

class SeatLayoutImage extends StatelessWidget {
  const SeatLayoutImage({
    super.key,
    required this.name,
    required this.selected,
    required this.occupied,
  });

  final String name;
  final bool selected, occupied;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SeatImage(
          occupied: occupied,
          isSelected: selected,
          demo: true,
          onTap: (int val) {

          },
          id: 0,
        ),
        Text(
          name,
          style: GoogleFonts.roboto().copyWith(
            fontSize: 9.sp,
            color: Colors.black,
            // fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}


