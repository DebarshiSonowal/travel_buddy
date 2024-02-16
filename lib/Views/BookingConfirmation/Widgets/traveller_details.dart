import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/Models/ContactDetails/contact_details.dart';
import 'package:travel_buddy/Repository/repository.dart';
import 'package:travel_buddy/main.dart';

import '../../../Constants/routes.dart';
import '../../../Router/navigator.dart';
import 'contact_details_widget.dart';
import 'contact_item.dart';
import 'icon_label_value.dart';
import 'price_widget_section.dart';
import 'title_widget.dart';

class TravellerDetails extends ConsumerWidget {
  const TravellerDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final data = ref.watch(repositoryProvider);
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
          Consumer(builder: (context, ref, _) {
            final data = ref.watch(repositoryProvider);
            return IconLabelValue(
              firstLabel: "Pick-Up",
              firstValue: data.startLoc,
              secondLabel: "Destination",
              secondValue: data.endLoc,
              iconData: Icons.car_crash_sharp,
            );
          }),
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
          Consumer(builder: (context, ref, _) {
            final data = ref.watch(repositoryProvider);
            return IconLabelValue(
              firstLabel: "Date",
              firstValue: DateFormat("dd MMM, yyyy")
                  .format(DateTime.parse(data.dateVal)),
              secondLabel: "Date",
              secondValue: "7th Sep, 2023",
            );
          }),
          const DottedLine(),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 5.w,
              vertical: 1.5.h,
            ),
            // height: 10.h,
            width: double.infinity,
            child: Consumer(builder: (context, ref, _) {
              final data = ref.watch(repositoryProvider);
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Traveller Details",
                    style: GoogleFonts.roboto().copyWith(
                      fontSize: 10.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 0.5.h,
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final item = data.customSeatData?.seats[index];
                      return ContactItem(item: item!);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 1.h,
                      );
                    },
                    itemCount: data.customSeatData?.seats.length??0,
                  ),
                ],
              );
            }),
          ),
          const DottedLine(),
          const ContactDetailsWidget(),
          const DottedLine(),
          PriceWidgetSection(data: data),
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
                    fontSize: 9.sp,
                    color: Colors.black54,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Gpay",
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 9.sp,
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





