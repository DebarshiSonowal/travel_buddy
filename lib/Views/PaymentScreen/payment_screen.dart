import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../Common/back_button.dart';
import '../../Constants/assets.dart';
import '../../Constants/constants.dart';
import '../../main.dart';
import '../InvoiceReceipt/Widgets/ticket_details.dart';
import '../InvoiceReceipt/invoice_receipt.dart';
import 'Widgets/bottom_bar.dart';
import 'Widgets/label_widget.dart';
import 'Widgets/payment_app_bar.dart';
import 'Widgets/price_indepenent.dart';
import 'Widgets/ticket_details.dart';

class PaymentScreen extends ConsumerStatefulWidget {
  const PaymentScreen({super.key});

  @override
  ConsumerState<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends ConsumerState<PaymentScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(17.h),
        child: const PaymentAppbar(),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 8.w,
          vertical: 2.h,
        ),
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ticket Details",
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 13.sp,
                  color: Colors.black,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              const TicketDetails(),
              SizedBox(
                height: 0.5.h,
              ),
              Divider(
                color: Colors.black,
                thickness: 0.08.h,
              ),
              SizedBox(
                height: 0.5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Fare",
                    style: GoogleFonts.roboto().copyWith(
                      fontSize: 11.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "₹1280",
                    style: GoogleFonts.roboto().copyWith(
                      fontSize: 11.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              //7896208559
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(
                  horizontal: 2.w,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 1.h,
                    ),
                    const PriceIndependentWidget(
                      label: "GST 18%",
                      value: "₹1466",
                    ),
                    const PriceIndependentWidget(
                      label: "Platform Charge (20)",
                      value: "₹1466",
                    ),
                    const PriceIndependentWidget(
                      label: "Insurance",
                      value: "₹1466",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 0.5.h,
              ),
              Divider(
                color: Colors.black,
                thickness: 0.08.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Fare",
                    style: GoogleFonts.roboto().copyWith(
                      fontSize: 11.sp,
                      color: Colors.black,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "₹1486",
                    style: GoogleFonts.roboto().copyWith(
                      fontSize: 11.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Divider(
                color: Colors.black,
                thickness: 0.08.h,
              ),
              Text(
                "UPI PAYMENTS",
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 11.sp,
                  color: Colors.black54,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              ExpansionTile(
                title: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      Assets.phonepeLogo,
                      scale: 20,
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Text(
                      "Phonepe",
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 10.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                thickness: 0.08.h,
              ),
              ExpansionTile(
                title: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      Assets.gpayLogo,
                      scale: 20,
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Text(
                      "Google Pay",
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 10.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                thickness: 0.08.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Add a new UPI ID",
                    style: GoogleFonts.roboto().copyWith(
                      fontSize: 9.sp,
                      color: Colors.black,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      right: 6.w,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(),
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.black,
                      size: 14.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
