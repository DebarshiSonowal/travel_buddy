import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'advertise_widget.dart';
import 'agreement_section.dart';
import 'headline.dart';

class InsuranceDetails extends StatelessWidget {
  const InsuranceDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      padding: EdgeInsets.symmetric(
        horizontal: 6.w,
      ),
      height: 24.5.h,
      width: double.infinity,
      child: Column(
        children: [
          const Headline(),
          SizedBox(
            height: 0.1.h,
          ),
          const AdvertiseBanner(),
          SizedBox(
            height: 1.h,
          ),
          const AgreementSection(),
        ],
      ),
    );
  }
}