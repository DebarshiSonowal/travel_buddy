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
            ref.read(repositoryProvider).updateContactDetails(index, val);
            updateContactDetails(index,val);
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