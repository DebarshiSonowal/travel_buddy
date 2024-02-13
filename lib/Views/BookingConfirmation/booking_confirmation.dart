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
import 'Widgets/traveller_details.dart';

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
              const BookingConfirmationMsg(),
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


