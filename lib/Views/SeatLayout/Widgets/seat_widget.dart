import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../Models/Layout/layout_model.dart';
import '../../../Models/SeatData/seat_data.dart';
import '../../../main.dart';

class SeatWidget extends ConsumerWidget {
  const SeatWidget({
    super.key,
    required this.item,
    required this.is_selected,
    required this.seat_status,
  });

  final LayoutModel item;
  final bool is_selected;
  final String? seat_status;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(repositoryProvider).seatData;
    return Card(
      // elevation: ,
      elevation: 0,
      color: Colors.transparent,
      child: GridTile(
        child: CachedNetworkImage(
          imageUrl: seatUrl(is_selected,data),
        ), //just for testing, will fill with image later
        // child: Image.asset(Assets.seatAvailableLogo),
      ),
    );
  }

  seatUrl(bool isSelected,List<SeatData> data) {
    debugPrint("seatUrl $seat_status");
    if (isSelected) {
      return "${data.first.seat_selected}";
      return is_selected ? "${data.first.seat_selected}" : item.image ?? "";
    }
    if(seat_status=="booked") {
      return "${data.first.seat_occupied}";
    }
    else {
      return item.image;
    }
  }
}
