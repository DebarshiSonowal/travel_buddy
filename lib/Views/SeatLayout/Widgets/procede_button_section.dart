import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/Views/SeatLayout/Widgets/proceed_button.dart';

import '../../../Models/Layout/layout_model.dart';
import '../../../Services/data_provider.dart';
import '../../../Widgets/loading_dialog.dart';
import '../../../main.dart';

class ProceedButtonSection extends ConsumerWidget {
  ProceedButtonSection({
    super.key,
    required this.selectTheSeats,
  });

  final Function(String, List<dynamic>) selectTheSeats;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final data = ref.watch(list);
    // final update = ref.read(repositoryProvider);
    final selected = ref.watch(repositoryProvider).selectedLayouts;
    final layout = ref.watch(searchLayoutProvider);
    return layout.when(
      data: (data) {
        return Container(
          height: 7.h,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Center(
            child: ProceedButton(
              onTap: () {
                if (selected.isNotEmpty) {
                  selectTheSeats(
                    "${data.data?.trip_id}",
                    getSelectedList(selected),
                  );
                } else {
                  Fluttertoast.showToast(msg: "Please select atleast one seat");
                }
              },
            ),
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

  List<dynamic> getSelectedList(List<LayoutModel> selected) {
    List<Map<String, dynamic>> list = [];
    for (var i in selected) {
      Map<String, dynamic> map = {
        "row": i.row,
        "col": i.column,
      };
      list.add(
        map,
      );
    }
    return list;
  }
}
