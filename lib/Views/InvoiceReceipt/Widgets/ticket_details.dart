import 'dart:io';
import 'package:barcode_widget/barcode_widget.dart';

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/main.dart';

import '../../PaymentScreen/Widgets/label_widget.dart';

class TicketDetails extends StatelessWidget {
  const TicketDetails({
    super.key,
    this.file,
  });

  final File? file;

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (BuildContext context, WidgetRef ref, _) {
      final data = ref.watch(repositoryProvider);
      return SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 6.w,
              ),
              child: Row(
                children: [
                  Text(
                    "Travel Buddy",
                    style: GoogleFonts.roboto().copyWith(
                      fontSize: 13.5.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Container(
                    height: 2.h,
                    width: 0.3.w,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    DateFormat("MMM dd, yyyy")
                        .format(DateTime.parse(data.dateVal)),
                    style: GoogleFonts.roboto().copyWith(
                      fontSize: 11.sp,
                      color: Colors.black,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 0.5.h),
              child: const DottedLine(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 0.5.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 30.w,
                        child: Text(
                          "${data.selectedVehicle?.name}",
                          style: GoogleFonts.roboto().copyWith(
                            fontSize: 12.5.sp,
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        "${data.selectedVehicle?.registration_no}",
                        style: GoogleFonts.roboto().copyWith(
                          fontSize: 11.sp,
                          color: Colors.black54,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 8.h,
                        width: 30.w,
                        child: Text(
                          "Model No:${data.selectedVehicle?.model_no}",
                          style: GoogleFonts.roboto().copyWith(
                            fontSize: 12.5.sp,
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        "Total Seats: ${data.selectedVehicle?.total_seats}",
                        style: GoogleFonts.roboto().copyWith(
                          fontSize: 11.sp,
                          color: Colors.black54,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 0.5.h),
              child: const DottedLine(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 0.5.h),
              child: ListView.separated(
                shrinkWrap: true,
                  itemBuilder: (context, index) {
                  final item = data.contactDetails[index];
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${item.passenger_name} (${item.gender==0?"M":item.gender==1?"F":"O"}, ${item.age})",
                          style: GoogleFonts.roboto().copyWith(
                            fontSize: 11.sp,
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "${item.passenger_contact}",
                          style: GoogleFonts.roboto().copyWith(
                            fontSize: 9.5.sp,
                            color: Colors.black54,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 1.h,
                    );
                  },
                  itemCount: data.contactDetails.length),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 0.5.h),
              child: const DottedLine(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 1.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LabelValue(
                    label: "Pick-Up",
                    value: data.startLoc,
                    is_right: true,
                  ),
                  SizedBox(
                    width: 20.w,
                    child: Icon(
                      Icons.car_crash_sharp,
                      size: 30.sp,
                    ),
                  ),
                  LabelValue(
                    label: "Destination",
                    value: data.endLoc,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 1.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LabelValue(
                    label: "Time",
                    value: "18:00",
                    is_right: true,
                  ),
                  SizedBox(
                    width: 20.w,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 15.sp,
                    ),
                  ),
                  LabelValue(
                    label: "Reach Time",
                    value: "05:30",
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 0.5.h),
              child: const DottedLine(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 1.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LabelValue(
                    label: "Date",
                    value: DateFormat("MMM dd, yyyy")
                        .format(DateTime.parse(data.dateVal)),
                    is_right: true,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  LabelValue(
                    label: "Date",
                    value: DateFormat("MMM dd, yyyy")
                        .format(DateTime.parse(data.dateVal)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 0.5.h),
              child: const DottedLine(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 1.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Fare",
                    style: GoogleFonts.roboto().copyWith(
                      fontSize: 14.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "₹${data.customSeatData?.total_amount}",
                    style: GoogleFonts.roboto().copyWith(
                      fontSize: 14.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 8.w,
                top: 0.2.h,
                bottom: 0.2.h,
                right: 6.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "GST 18%",
                    style: GoogleFonts.roboto().copyWith(
                      fontSize: 11.5.sp,
                      color: Colors.black,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "₹${data.customSeatData?.gst}",
                    style: GoogleFonts.roboto().copyWith(
                      fontSize: 11.5.sp,
                      color: Colors.black54,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 8.w,
                top: 0.2.h,
                bottom: 0.2.h,
                right: 6.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Platform Charge (20)",
                    style: GoogleFonts.roboto().copyWith(
                      fontSize: 11.5.sp,
                      color: Colors.black,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "₹0",
                    style: GoogleFonts.roboto().copyWith(
                      fontSize: 11.5.sp,
                      color: Colors.black54,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 8.w,
                top: 0.2.h,
                bottom: 0.2.h,
                right: 6.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Insurance",
                    style: GoogleFonts.roboto().copyWith(
                      fontSize: 11.5.sp,
                      color: Colors.black,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "₹0",
                    style: GoogleFonts.roboto().copyWith(
                      fontSize: 11.5.sp,
                      color: Colors.black54,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 0.5.h),
              child: const DottedLine(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 1.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Fare",
                    style: GoogleFonts.roboto().copyWith(
                      fontSize: 14.sp,
                      color: Colors.black,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "₹${data.customSeatData?.total_amount}",
                    style: GoogleFonts.roboto().copyWith(
                      fontSize: 14.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 0.5.h,
            ),
            const DottedLine(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 1.5.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pick-up Point Contact Detail",
                    style: GoogleFonts.roboto().copyWith(
                      fontSize: 11.sp,
                      color: Colors.black,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        FontAwesomeIcons.whatsapp,
                        color: Colors.black,
                        size: 14.sp,
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        "+91 ${(data.selectedVehicle?.counter_info.isEmpty??false)?"":data.selectedVehicle?.counter_info[0].contact_name??""}",
                        style: GoogleFonts.roboto().copyWith(
                          fontSize: 11.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        FontAwesomeIcons.whatsapp,
                        color: Colors.black,
                        size: 14.sp,
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        "+91 ${(data.selectedVehicle?.counter_info.isEmpty??false)?"":data.selectedVehicle?.counter_info[1].contact_name??""}",
                        style: GoogleFonts.roboto().copyWith(
                          fontSize: 11.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const DottedLine(),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 6.w,
                vertical: 2.h,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 20.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Seat",
                              style: GoogleFonts.roboto().copyWith(
                                fontSize: 11.sp,
                                color: Colors.black87,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              // data.selectedLayouts.map((e) => e.),
                              "",
                              style: GoogleFonts.roboto().copyWith(
                                fontSize: 12.5.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 25.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ticket No:",
                              style: GoogleFonts.roboto().copyWith(
                                fontSize: 11.sp,
                                color: Colors.black87,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "AR4k98675",
                              style: GoogleFonts.roboto().copyWith(
                                fontSize: 12.5.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "OrderId:",
                              style: GoogleFonts.roboto().copyWith(
                                fontSize: 11.sp,
                                color: Colors.black87,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "78638",
                              style: GoogleFonts.roboto().copyWith(
                                fontSize: 12.5.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  SizedBox(
                    width: 60.w,
                    height: 10.h,
                    child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: 'This is a QR code',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
