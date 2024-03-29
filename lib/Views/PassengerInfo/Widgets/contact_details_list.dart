import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';

import '../../../Models/ContactDetails/contact_details.dart';
import '../../../main.dart';
import 'contact_details.dart';

class ContactDetailsList extends ConsumerWidget {
  const ContactDetailsList(this.contactDetails, this.updateContactDetails, {
    super.key,
  });

  final List<ContactDetails> contactDetails;
  final Function(int, ContactDetails) updateContactDetails;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(repositoryProvider);
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final item = contactDetails[index];
        return ContactDetailsCard(
          // nameController: nameController,
          // mobileController: mobileController,
          // whatsappController: whatsappController,
          data: item,
          selected: item.is_selected ?? false,
          updateSelected: (ContactDetails val) {
            debugPrint("Update 1 Selected ${contactDetails.first.passenger_name} \n$index \n$val \n${item.passenger_name} \n${item.passenger_contact} \n${item.whatsapp}");
              // ref.read(repositoryProvider).updateContactDetails(index, val);
              updateContactDetails(index,val);
            try {
              ref.read(repositoryProvider).updateContactDetails(index, val);
            } catch (e) {
              debugPrint(e.toString());
            }
          },
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(
          height: 1.h,
        );
      },
      itemCount: contactDetails.length,
    );
  }
}