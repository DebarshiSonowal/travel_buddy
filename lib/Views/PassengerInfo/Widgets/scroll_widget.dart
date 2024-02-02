import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/Constants/assets.dart';
import 'package:travel_buddy/Models/ContactDetails/contact_details.dart';
import 'package:travel_buddy/Views/PassengerInfo/Widgets/passenget_list_widget.dart';
import 'package:travel_buddy/main.dart';

import '../../../Constants/constants.dart';
import '../../../Models/basic_info.dart';
import 'contact_details.dart';
import 'contact_details_list.dart';
import 'insurance_details.dart';
import 'vehicle_info.dart';

class ScrollWidget extends StatelessWidget {
  ScrollWidget({super.key, required this.is_insured, required this.updateInsured, required this.contactDetails, required this.updateContactDetails, required this.addContactDetails});
  final List<ContactDetails> contactDetails;
  final int is_insured;
  final Function(int) updateInsured;
  final Function(int index, ContactDetails val) updateContactDetails;
  final Function(ContactDetails val) addContactDetails;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 77.h,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const VehicleInfo(),
            SizedBox(
              height: 0.2.h,
            ),
            ContactDetailsList(
              contactDetails,
              (int index, ContactDetails val) {
               updateContactDetails(index,val);
              },
            ),
            SizedBox(
              height: 0.2.h,
            ),
            PassengerListWidget(
              contactDetails,
              (ContactDetails val) {
                addContactDetails(val);
              },
            ),
            InsuranceDetails(
              is_insured: is_insured,
              updateInsured: (int val) {
                updateInsured(val);
              },
            ),
          ],
        ),
      ),
    );
  }
}
