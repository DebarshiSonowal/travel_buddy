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
import 'Widgets/ticket_details.dart';

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


