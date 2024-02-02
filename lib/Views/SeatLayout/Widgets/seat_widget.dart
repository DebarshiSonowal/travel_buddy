import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../Models/Layout/layout_model.dart';
import '../../../main.dart';

class SeatWidget extends ConsumerWidget {
  const SeatWidget({
    super.key,
    required this.item, required this.is_selected,
  });

  final LayoutModel item;
  final bool is_selected;
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final data=ref.watch(repositoryProvider).seatData;
    return Card(
      elevation: is_selected?10:0,
      color: Colors.black,
      child: GridTile(
        child: CachedNetworkImage(
          imageUrl: is_selected?"${data.first.seat_selected}":item.image??"",
        ), //just for testing, will fill with image later
        // child: Image.asset(Assets.seatAvailableLogo),
      ),
    );
  }
}