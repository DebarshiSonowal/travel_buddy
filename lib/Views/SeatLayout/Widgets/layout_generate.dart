import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/Constants/assets.dart';
import 'package:travel_buddy/Models/Layout/layout_model.dart';
import 'package:travel_buddy/Views/SeatLayout/Widgets/seat_widget.dart';
import 'package:travel_buddy/main.dart';

import '../../../Services/data_provider.dart';
import '../../../Widgets/loading_dialog.dart';
import 'first_line.dart';
import 'last_line.dart';
import 'other_lines.dart';

class LayoutGenerator extends ConsumerStatefulWidget {
  const LayoutGenerator(this.removeSeat, this.addSeat, {super.key, required this.selected});

  final List<LayoutModel> selected;
  final Function(LayoutModel val) removeSeat;
  final Function(LayoutModel val) addSeat;

  @override
  ConsumerState<LayoutGenerator> createState() => _ConsumerStateState();
}

class _ConsumerStateState extends ConsumerState<LayoutGenerator> {
  @override
  Widget build(BuildContext context) {
    final layout = ref.watch(searchLayoutProvider);
    return layout.when(
      data: (data) {
        return Container(
          padding: EdgeInsets.symmetric(
            horizontal: 2.5.w,
            vertical: 0.5.h,
          ),
          // width: 70.w,
          height: 55.h,
          margin: EdgeInsets.symmetric(
            horizontal: 3.w,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: data.columns ?? 1,
              crossAxisSpacing: 2.w,
            ),
            itemCount: data.layouts.length,
            itemBuilder: (BuildContext context, int index) {
              final item = data.layouts[index];

              return GestureDetector(
                onTap: () {
                  final isSelected = widget.selected.contains(item);
                  final layout = ref.watch(repositoryProvider).layoutResponse;
                  if (isSelected) {
                    // ref.read(repositoryProvider).removeLayout(
                    //       item,
                    //     );
                    widget.removeSeat(item);
                  } else {
                    // ref.read(repositoryProvider).addLayouts(
                    //       item,
                    //       layout,
                    //     );
                    widget.addSeat(item);
                    ref.read(repositoryProvider).setAllLayouts(layout!);
                  }
                },
                child: SeatWidget(
                  item: item,
                  is_selected: widget.selected.contains(item),
                ),
              );
            },
          ),
        );
      },
      error: (err, s) {
        debugPrint(err.toString());
        return Container();
      },
      loading: () => Center(
        child: LoadingDialog(),
      ),
    );
  }
}
