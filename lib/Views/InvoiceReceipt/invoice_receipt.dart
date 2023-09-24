import 'dart:io';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:qr_flutter/qr_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:ticket_widget/ticket_widget.dart';
import 'package:travel_buddy/Constants/constants.dart';

import 'Widgets/invoice_receipt_appbar.dart';
import 'Widgets/label_value.dart';

class InvoiceReceipt extends StatefulWidget {
  const InvoiceReceipt({super.key});

  @override
  State<InvoiceReceipt> createState() => _InvoiceReceiptState();
}

class _InvoiceReceiptState extends State<InvoiceReceipt> {
  File? file;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      generateBarcode();
    });
  }

  void generateBarcode() async {
    // Create a DataMatrix barcode
    final dm = Barcode.dataMatrix();

// Generate a SVG with "Hello World!"
    final svg = Barcode.code128().toSvg('Hello World!', width: 200, height: 200);
    print("SVG $svg");
// Save the image
    try {
      File('barcode.svg').writeAsStringSync(svg);
    } catch (e) {
      print(e);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(14.h),
        child: const invoiceReceiptAppBar(),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 8.w,
          vertical: 1.5.h,
        ),
        width: double.infinity,
        height: double.infinity,
        child: TicketWidget(
          // decoration: BoxDecoration(
          //   color: Colors.white,
          //   borderRadius: BorderRadius.circular(20),
          // ),
          isCornerRounded: true,
          padding: EdgeInsets.symmetric(
            vertical: 1.5.h,
          ),
          width: double.infinity,
          height: double.infinity,
          child: TicketDetails(
            file: file,
          ),
        ),
      ),
    );
  }
}

class TicketDetails extends StatelessWidget {
  const TicketDetails({
    super.key,
    this.file,
  });

  final File? file;

  @override
  Widget build(BuildContext context) {
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
                  "Sep 7th, 2023",
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
                    Text(
                      "Capital Travel",
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 12.5.sp,
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "AS05H0987",
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
                  children: [
                    Text(
                      "Toyota Innova",
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 12.5.sp,
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "AS05H0987",
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mr.Jhon Lenon (M, 35)",
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 11.sp,
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Mrs. Marry Johnson (F,30)",
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 11.sp,
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "AS05H0987",
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 9.5.sp,
                        color: Colors.black54,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "AS05H0987",
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 9.5.sp,
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
            padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LabelValue(
                  label: "Pick-Up",
                  value: "Itanagar",
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
                  value: "Guwahati",
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
                  value: "7th Sep, 2023",
                  is_right: true,
                ),
                SizedBox(
                  width: 10.w,
                ),
                LabelValue(
                  label: "Date",
                  value: "8th Sep, 2023",
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
                  "₹1280",
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
                  "₹1280",
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
                  "₹1280",
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
                  "₹1280",
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
                  "₹1280",
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
                      "+91 0000000000",
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
                      "+91 0000000000",
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
                            "26, 27",
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
  }
}
