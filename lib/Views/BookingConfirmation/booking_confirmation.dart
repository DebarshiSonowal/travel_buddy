import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/Constants/constants.dart';
import 'package:travel_buddy/Constants/routes.dart';
import 'package:travel_buddy/Router/navigator.dart';

import 'Widgets/booking_confirmation_appbar.dart';
import 'Widgets/booking_confirmation_msg.dart';
import 'Widgets/icon_label_value.dart';
import 'Widgets/order_info.dart';
import 'Widgets/title_widget.dart';

class BookingConfirmation extends StatefulWidget {
  const BookingConfirmation({super.key});

  @override
  State<BookingConfirmation> createState() => _BookingConfirmationState();
}

class _BookingConfirmationState extends State<BookingConfirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(14.h),
        child: const BookingConfirmationAppbar(),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 6.w,
          vertical: 1.h,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const BookingCofirmationMsg(),
              SizedBox(
                height: 1.5.h,
              ),
              const OrderInfo(),
              SizedBox(
                height: 1.5.h,
              ),
              const TravellerDetails(),
              SizedBox(
                height: 1.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TravellerDetails extends StatelessWidget {
  const TravellerDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 2.w,
        vertical: 1.5.h,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          const TitleWidget(),
          Divider(
            color: Colors.black54,
            thickness: 0.08.h,
          ),
          IconLabelValue(
            firstLabel: "Pick-Up",
            firstValue: "Itanagar",
            secondLabel: "Destination",
            secondValue: "Guwahati",
            iconData: Icons.car_crash_sharp,
          ),
          Divider(
            color: Colors.black54,
            thickness: 0.08.h,
          ),
          IconLabelValue(
            firstLabel: "Time",
            firstValue: "18:00",
            secondLabel: "Reach Time",
            secondValue: "05:30",
            iconData: Icons.arrow_forward_ios,
          ),
          Divider(
            color: Colors.black54,
            thickness: 0.08.h,
          ),
          IconLabelValue(
            firstLabel: "Date",
            firstValue: "7th Sep, 2023",
            secondLabel: "Date",
            secondValue: "7th Sep, 2023",
          ),
          const DottedLine(),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 5.w,
              vertical: 1.5.h,
            ),
            // height: 10.h,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Traveller Details",
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 13.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 0.5.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                      height: 25.sp,
                      width: 25.sp,
                    ),
                    SizedBox(
                      width: 2.5.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Jhon Deori (M,35)",
                          style: GoogleFonts.roboto().copyWith(
                            fontSize: 13.sp,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "26 Seater",
                          style: GoogleFonts.roboto().copyWith(
                            fontSize: 11.sp,
                            color: Colors.black87,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 0.5.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.blueAccent,
                        shape: BoxShape.circle,
                      ),
                      height: 25.sp,
                      width: 25.sp,
                    ),
                    SizedBox(
                      width: 2.5.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Marry Deori (F,30)",
                          style: GoogleFonts.roboto().copyWith(
                            fontSize: 13.sp,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "27 Seater",
                          style: GoogleFonts.roboto().copyWith(
                            fontSize: 11.sp,
                            color: Colors.black87,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const DottedLine(),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: 6.w,
              vertical: 1.5.h,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Contact Details",
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 13.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 0.5.h,
                ),
                Text(
                  "Email",
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 10.sp,
                    color: Colors.black87,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "qwerty@gmail.com",
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 11.sp,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 0.5.h,
                ),
                Text(
                  "Mobile No",
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 10.sp,
                    color: Colors.black87,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "+91 7002819283",
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 11.sp,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const DottedLine(),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: 6.w,
              vertical: 1.5.h,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Fare",
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 13.sp,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "₹1930",
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 13.sp,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 2.w,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Gst 18%",
                            style: GoogleFonts.roboto().copyWith(
                              fontSize: 13.sp,
                              color: Colors.black87,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "₹1466",
                            style: GoogleFonts.roboto().copyWith(
                              fontSize: 11.sp,
                              color: Colors.black87,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Platform Charge (20)",
                            style: GoogleFonts.roboto().copyWith(
                              fontSize: 13.sp,
                              color: Colors.black87,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "₹1466",
                            style: GoogleFonts.roboto().copyWith(
                              fontSize: 11.sp,
                              color: Colors.black87,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Insurance",
                            style: GoogleFonts.roboto().copyWith(
                              fontSize: 13.sp,
                              color: Colors.black87,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "₹1466",
                            style: GoogleFonts.roboto().copyWith(
                              fontSize: 11.sp,
                              color: Colors.black87,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 0.5.h,
                      ),
                    ],
                  ),
                ),
                const DottedLine(),
                SizedBox(
                  height: 0.5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Fare",
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 13.sp,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "₹1930",
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 13.sp,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 0.5.h,
                ),
                const DottedLine(),
              ],
            ),
          ),
          SizedBox(
            height: 0.2.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 6.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Payment Mode",
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 13.sp,
                    color: Colors.black54,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "₹1466",
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 11.sp,
                    color: Colors.black87,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 0.5.h,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: 4.w,
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.black,
                ),
              ),
              onPressed: () {
                Navigation.instance.navigate(Routes.invoiceReceiptScreen);
              },
              child: Text(
                "View/Download Receipts",
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 12.sp,
                  color: Colors.white,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
