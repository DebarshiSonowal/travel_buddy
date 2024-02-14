import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/Models/Location/location_model.dart';
import 'package:travel_buddy/main.dart';

import '../../../Constants/constants.dart';
import '../../../Models/LocationResponse/location_response.dart';
import '../../../Widgets/loading_dialog.dart';

class FromToWidget extends ConsumerWidget {
  const FromToWidget(
    this.selectedLocation,
    this.onSelected,
    // this.selectedProvider,
      {
    super.key,
    required this.controller,
    required this.hint,
    required this.list,
  });

  final TextEditingController controller;
  final String hint;
  final FutureProvider<LocationResponse> list;
  // final StateProvider selectedProvider;
  final LocationModel? selectedLocation;
  final Function(LocationModel val) onSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(list);
    final update = ref.read(repositoryProvider);
    return Container(
      width: double.infinity,
      height: 6.h,
      padding: EdgeInsets.symmetric(
        horizontal: 4.w,
      ),
      child: Row(
        children: [
          Icon(
            Icons.car_rental,
            size: 30.sp,
          ),
          SizedBox(
            width: 2.w,
          ),
          data.when(
            data: (data) {
              return TheDropMenuButton(
                selectedLocation: selectedLocation,
                hint: hint,
                onSelected: (val) {
                  onSelected(val);
                  if (hint=="From") {
                    update.updateStartLoc("${val.id}");
                    update.updateStart("${val.display_name}");
                  }else{
                    update.updateEndLoc("${val.id}");
                    update.updateEnd("${val.display_name}");
                  }
                  debugPrint("Selected location ${val.id} ${val.display_name}");
                },
                data: data,
              );
              // return Container();
            },
            error: (err, s) {
              debugPrint(err.toString());
              return Container();
            },
            loading: () => Center(
              child: LoadingDialog(),
            ),
          ),
        ],
      ),
    );
  }
}

class TheDropMenuButton extends StatelessWidget {
  const TheDropMenuButton({
    super.key,
    required this.selectedLocation,
    required this.hint,
    required this.onSelected,
    required this.data,
  });

  final LocationResponse data;
  final LocationModel? selectedLocation;
  final String hint;
  final Function(LocationModel val) onSelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 65.w,
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          value: selectedLocation,
          hint: Text(
            hint,
            style: GoogleFonts.roboto().copyWith(
              // fontWeight: FontWeight.bold,
              fontSize: 11.sp,
              color: Colors.black45,
            ),
          ),
          items: data.data?.location
              .map((e) => DropdownMenuItem(
                    value: e,
                    child: Text(
                      e.display_name ?? "N/A",
                      style: GoogleFonts.roboto().copyWith(
                        // fontWeight: FontWeight.bold,
                        fontSize: 11.sp,
                        color: Colors.black,
                      ),
                    ),
                  ))
              .toList(),
          onChanged: (value) {
            onSelected(value!);
          },
        ),
      ),
    );
  }
}
