import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/Constants/assets.dart';
import 'package:travel_buddy/Views/PassengerInfo/Widgets/passenget_list_widget.dart';

import '../../../Constants/constants.dart';
import '../../../Models/basic_info.dart';
import 'contact_details.dart';
import 'insurance_details.dart';
import 'vehicle_info.dart';

class ScrollWidget extends StatelessWidget {
  const ScrollWidget({
    super.key,
    required this.nameController,
    required this.mobileController,
    required this.whatsappController,
  });

  final TextEditingController nameController;
  final TextEditingController mobileController;
  final TextEditingController whatsappController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 77.h,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const VehicleInfo(),
            ContactDetails(
                nameController: nameController,
                mobileController: mobileController,
                whatsappController: whatsappController),
            SizedBox(
              height: 0.5.h,
            ),
            const PassengerListWidget(),
            const InsuranceDetails(),
          ],
        ),
      ),
    );
  }
}
