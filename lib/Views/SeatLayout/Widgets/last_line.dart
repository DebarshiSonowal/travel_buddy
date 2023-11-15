import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/Views/SeatLayout/Widgets/seat_image.dart';

class LastLines extends StatelessWidget {
  const LastLines({
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
      height: 5.h,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SeatImage(
            type: selected.contains(ids[0])?1:0,
            onTap: (int val) {
              onTap(val);
            },
            id: ids[0],
          ),
          SizedBox(
            width: 4.w,
          ),
          SeatImage(
            type: selected.contains(ids[1])?1:0,
            onTap: (int val) {
              onTap(val);
            },
            id: ids[1],
          ),
          const Spacer(),
          SeatImage(
            type: selected.contains(ids[1])?1:0,
            onTap: (int val) {
              onTap(val);
            },
            id: ids[1],
          ),
          const Spacer(),
          SeatImage(
            type: selected.contains(ids[2])?1:0,
            onTap: (int val) {
              onTap(val);
            },
            id: ids[2],
          ),
          SizedBox(
            width: 4.w,
          ),
          SeatImage(
            type: selected.contains(ids[3])?1:0,
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