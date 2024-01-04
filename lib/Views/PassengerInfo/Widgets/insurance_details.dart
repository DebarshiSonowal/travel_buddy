import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'advertise_widget.dart';
import 'agreement_section.dart';
import 'headline.dart';

class InsuranceDetails extends StatelessWidget {
  const InsuranceDetails({
    super.key,
    required this.is_insured,
    required this.updateInsured,
  });

  final int is_insured;
  final Function(int) updateInsured;

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
          AgreementSection(
            is_insured: is_insured,
            updateInsured: (int val) {
              updateInsured(val);
            },
          ),
        ],
      ),
    );
  }
}
