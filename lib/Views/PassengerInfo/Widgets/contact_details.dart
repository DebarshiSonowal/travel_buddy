import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../Constants/constants.dart';
import '../../../Models/ContactDetails/contact_details.dart';

class ContactDetailsCard extends StatefulWidget {
  ContactDetailsCard({
    super.key,
    // required this.nameController,
    // required this.mobileController,
    // required this.whatsappController,
    required this.selected,
    required this.updateSelected,
    required this.data,
  });

  // final TextEditingController nameController = TextEditingController();
  // final TextEditingController mobileController = TextEditingController();
  // final TextEditingController whatsappController = TextEditingController();
  final bool selected;
  final Function(ContactDetails val) updateSelected;
  final ContactDetails data;

  @override
  State<ContactDetailsCard> createState() => _ContactDetailsCardState();
}

class _ContactDetailsCardState extends State<ContactDetailsCard> {
  bool isSelected = false;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController whatsappController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 6.w,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 4.w,
        vertical: 0.8.h,
      ),
      decoration: BoxDecoration(
        color: Constants.blackColor,
        borderRadius: BorderRadius.circular(20),
      ),
      width: double.infinity,
      // height: 17.5.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Contact Details",
            style: GoogleFonts.roboto().copyWith(
              fontSize: 9.sp,
              color: const Color(0xffdbdbdb),
              // fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 4.h,
            child: TextField(
              controller: nameController,
              style: GoogleFonts.roboto().copyWith(
                fontSize: 8.sp,
                color: Colors.white,
                // fontWeight: FontWeight.bold,
              ),
              cursorColor: const Color(0xff747474),
              decoration: InputDecoration(
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff747474),
                  ),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff747474),
                  ),
                ),
                hintText: "Name",
                hintStyle: GoogleFonts.roboto().copyWith(
                  fontSize: 7.sp,
                  color: const Color(0xff747474),

                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 0.2.h,
          ),
          Row(
            children: [
              Text(
                "+91",
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 8.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 1.5.w,
              ),
              Container(
                height: 2.5.h,
                width: 0.3.w,
                color: const Color(0xff747474),
              ),
              SizedBox(
                width: 1.5.w,
              ),
              SizedBox(
                height: 3.h,
                width: 25.w,
                child: TextField(
                  controller: mobileController,
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 9.sp,
                    color: Colors.white,
                    // fontWeight: FontWeight.bold,
                  ),
                  keyboardType: TextInputType.phone,
                  cursorColor: const Color(0xff747474),
                  decoration: InputDecoration(
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff747474),
                      ),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff747474),
                      ),
                    ),
                    hintText: "Phone",
                    hintStyle: GoogleFonts.roboto().copyWith(
                      fontSize: 8.sp,
                      color: const Color(0xff747474),

                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 4.w,
              ),
              Icon(
                FontAwesomeIcons.whatsapp,
                color: Colors.white,
                size: 14.sp,
              ),
              SizedBox(
                width: 1.w,
              ),
              Text(
                "+91",
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 8.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 1.w,
              ),
              Container(
                height: 2.5.h,
                width: 0.3.w,
                color: const Color(0xff747474),
              ),
              SizedBox(
                width: 1.w,
              ),
              SizedBox(
                height: 3.h,
                width: 27.w,
                child: TextField(
                  controller: whatsappController,
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 8.sp,
                    color: Colors.white,
                    // fontWeight: FontWeight.bold,
                  ),
                  keyboardType: TextInputType.phone,
                  cursorColor: const Color(0xff747474),
                  decoration: InputDecoration(
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff747474),
                      ),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff747474),
                      ),
                    ),
                    hintText: "Whatsapp",
                    hintStyle: GoogleFonts.roboto().copyWith(
                      fontSize: 7.sp,
                      color: const Color(0xff747474),

                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: isSelected,
                onChanged: (val) {
                  setState(() {
                    // widget.updateSelected(val ?? false);
                    isSelected = val ?? false;
                  });
                },
                checkColor: Colors.white,
                activeColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                side: MaterialStateBorderSide.resolveWith(
                  (states) => const BorderSide(width: 1.0, color: Colors.white),
                ),
              ),
              Text(
                "Send Booking Details to Whatsapp",
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 8.sp,
                  color: Colors.white,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              SizedBox(
                height: 3.h,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        // side: BorderSide(color: Colors.red)
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        widget.updateSelected(ContactDetails(
                          widget.data.row,
                          widget.data.col,
                          nameController.text,
                          mobileController.text,
                          isSelected,
                          widget.data.gender,
                          widget.data.age,
                          "",
                        ));
                      });
                      debugPrint(
                          "Update Selected:\n${widget.data.row}\n${widget.data.col}\n${nameController.text}\n${mobileController.text}\n${isSelected}\n${widget.data.gender}\n${widget.data.age}");
                    },
                    child: Text(
                      "Update",
                      style: GoogleFonts.roboto().copyWith(
                        fontSize: 8.5.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      debugPrint("ASLOG ${widget.data.passenger_name}");

      // widget.ageController.text = widget.data.passenger_name??'';
      setState(() {
        nameController.text = widget.data.passenger_name ?? '';
        isSelected = widget.selected;
        mobileController.text = widget.data.passenger_contact??"";
        whatsappController.text = widget.data.whatsapp??"";
      });
    });
  }
}
