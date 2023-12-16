import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../Constants/constants.dart';
import '../../../Models/location_response.dart';
import '../../../Widgets/loading_dialog.dart';

class FromToWidget extends ConsumerWidget {
  const FromToWidget({
    super.key,
    required this.controller,
    required this.hint,
    required this.list,
  });

  final TextEditingController controller;
  final String hint;
  final FutureProvider<LocationResponse> list;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(list);
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
              return SizedBox(
                width: 45.w,
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      // borderRadius: BorderRadius.circular(30.0),
                    ),
                    filled: false,
                    hintStyle: GoogleFonts.roboto().copyWith(
                      // fontWeight: FontWeight.bold,
                      fontSize: 11.sp,
                      color: Colors.black45,
                    ),
                    hintText: hint,
                    fillColor: Constants.primaryColor,
                    counterText: "",
                  ),
                ),
              );
            },
            error: (err, s){
              print(err);
              return Container(

              );
            },
            loading: () => Center(
              child: LoadingDialog(),
            ),
          ),
        ],
      ),
      // child: data.when(
      //   data: (data) {
      //     return Container(
      //       width: double.infinity,
      //       height: 6.h,
      //       padding: EdgeInsets.symmetric(
      //         horizontal: 4.w,
      //       ),
      //       child: Row(
      //         children: [
      //           Icon(
      //             Icons.car_rental,
      //             size: 30.sp,
      //           ),
      //           SizedBox(
      //             width: 2.w,
      //           ),
      //           SizedBox(
      //             width: 45.w,
      //             child: TextField(
      //               controller: controller,
      //               decoration: InputDecoration(
      //                 border: const OutlineInputBorder(
      //                   borderSide: BorderSide.none,
      //                   // borderRadius: BorderRadius.circular(30.0),
      //                 ),
      //                 filled: false,
      //                 hintStyle: GoogleFonts.roboto().copyWith(
      //                   // fontWeight: FontWeight.bold,
      //                   fontSize: 11.sp,
      //                   color: Colors.black45,
      //                 ),
      //                 hintText: hint,
      //                 fillColor: Constants.primaryColor,
      //                 counterText: "",
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     );
      //   },
      //   error: (err, s) => Container(),
      //   loading: () => Center(
      //     child: LoadingDialog(),
      //   ),
      // ),
    );
  }
}
