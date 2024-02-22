import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/Views/BookingScreen/Widgets/rating_button.dart';

import '../../../Constants/constants.dart';
import '../../../Models/Vehicle/vehicle_model.dart';

class VehicleItem extends StatefulWidget {
  const VehicleItem({super.key, required this.item, required this.onTap});

  final VehicleModel item;
  final Function(VehicleModel val) onTap;

  @override
  State<VehicleItem> createState() => _VehicleItemState();
}

class _VehicleItemState extends State<VehicleItem> {
  bool isExpended = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 8.w,
      ),
      decoration: BoxDecoration(
        color: Constants.primaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 2.w,
        vertical: 0.5.h,
      ),
      child: Theme(
        data: ThemeData().copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: EdgeInsets.symmetric(
            horizontal: 1.5.w,
          ),
          maintainState: isExpended,
          // onExpansionChanged: (val) {
          //   setState(() {
          //     isExpended = !isExpended;
          //   });
          // },
          collapsedBackgroundColor: Constants.primaryColor,
          backgroundColor: Constants.primaryColor,
          leading: Icon(
            Icons.car_rental,
            color: Colors.black,
            size: 23.sp,
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.item.name ?? "Maruti Alto",
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 11.sp,
                  color: Colors.black,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 0.3.h,
              ),
              // !isExpended
              //     ? Text(
              //         "Time: 21:00 - 03:45",
              //         style: GoogleFonts.roboto().copyWith(
              //           fontSize: 7.sp,
              //           color: Colors.black,
              //           // fontWeight: FontWeight.bold,
              //         ),
              //       )
              //     : Text(
              //         "21:00 - 03:45",
              //         style: GoogleFonts.roboto().copyWith(
              //           fontSize: 7.sp,
              //           color: Colors.black,
              //           // fontWeight: FontWeight.bold,
              //         ),
              //       ),
              // SizedBox(
              //   height: 0.3.h,
              // ),
              isExpended
                  ? Text(
                      "${widget.item.route_info.first.strt_time} - ${widget.item.total_seats} seats left",
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 6.sp,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  : Container(),
            ],
          ),
          trailing: SizedBox(
            width: 37.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    !isExpended ? const RatingButton() : Container(),
                    Text(
                      "₹900",
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 14.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isExpended = !isExpended;
                        });
                      },
                      child: Icon(
                        isExpended
                            ? Icons.keyboard_arrow_up_sharp
                            : Icons.keyboard_arrow_down_sharp,
                        color: Colors.black,
                        size: 20.sp,
                      ),
                    ),
                  ],
                ),
                isExpended
                    ? Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        width: 17.w,
                        child: Row(
                          children: [
                            Container(
                              width: 11.w,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 1.w,
                                vertical: 0.5.h,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Constants.primaryColor,
                                    size: 11.sp,
                                  ),
                                  SizedBox(
                                    width: 1.w,
                                  ),
                                  Text(
                                    "${widget.item.rating??0}",
                                    style: GoogleFonts.roboto().copyWith(
                                      fontSize: 7.sp,
                                      color: Colors.white,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 0.5.w,
                            ),
                            Text(
                              "300",
                              style: GoogleFonts.roboto().copyWith(
                                fontSize: 7.5.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
          children: [
            isExpended
                ? SizedBox(
                    height: 1.h,
                  )
                : Container(),
            isExpended
                ? GestureDetector(
                    onTap: () => widget.onTap(widget.item),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 0.5.h,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          "SELECT VEHICLE",
                          style: GoogleFonts.roboto().copyWith(
                            fontSize: 9.sp,
                            color: Colors.white,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )
                : Container(),
            isExpended
                ? SizedBox(
                    height: 1.h,
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
