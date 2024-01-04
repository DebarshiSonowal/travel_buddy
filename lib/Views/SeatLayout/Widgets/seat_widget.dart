import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../Models/Layout/layout_model.dart';

class SeatWidget extends StatelessWidget {
  const SeatWidget({
    super.key,
    required this.item, required this.is_selected,
  });

  final LayoutModel item;
  final bool is_selected;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: is_selected?10:3,
      // color: Colors.black54,
      child: GridTile(
        child: CachedNetworkImage(
          imageUrl: item.image??"",
        ), //just for testing, will fill with image later
        // child: Image.asset(Assets.seatAvailableLogo),
      ),
    );
  }
}