import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/Views/SeatLayout/Widgets/seat_image.dart';

class OtherLines extends StatelessWidget {
  const OtherLines({
    super.key,
    required this.ids,
    required this.selected,
    required this.onTap,
  });

  final List<int> ids, selected;
  final Function(int id) onTap;

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
            isSelected: selected.contains(ids[0]),
            demo: false,
            occupied: false,
            onTap: (int val) {
              onTap(val);
            },
            id: ids[0],
          ),
          SizedBox(
            width: 4.w,
          ),
          SeatImage(
            isSelected: selected.contains(ids[1]),
            demo: false,
            occupied: false,
            onTap: (int val) {
              onTap(val);
            },
            id: ids[1],
          ),
          const Spacer(),
          SeatImage(
            isSelected: selected.contains(ids[2]),
            demo: false,
            occupied: false,
            onTap: (int val) {
              onTap(val);
            },
            id: ids[2],
          ),
          SizedBox(
            width: 4.w,
          ),
          SeatImage(
            isSelected: selected.contains(ids[3]),
            demo: false,
            occupied: false,
            onTap: (int val) {
              onTap(val);
            },
            id: ids[3],
          ),
        ],
      ),
    );
  }
}