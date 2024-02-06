import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/Models/Location/location_model.dart';
import 'package:travel_buddy/Services/api_provider.dart';
import 'package:travel_buddy/Services/data_provider.dart';
import 'package:travel_buddy/Widgets/loading_dialog.dart';
import 'package:travel_buddy/main.dart';

import '../../../Constants/constants.dart';
import 'from_to_widget.dart';

class BookWidget extends StatefulWidget {
  const BookWidget({
    super.key,
    required this.from,
    required this.to,
    required this.selected,
    required this.updateSelected,
  });

  final TextEditingController from;
  final TextEditingController to;
  final int selected;
  final Function(int) updateSelected;

  @override
  State<BookWidget> createState() => _BookWidgetState();
}

class _BookWidgetState extends State<BookWidget> {
  LocationModel? fromLocation, toLocation;
  String date = "";
  List<DateTime?> dates = [];

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      date = DateFormat("E, dd MMM").format(DateTime.now());
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 6.w,
        vertical: 1.h,
      ),
      height: 23.h,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffdcdcdc),
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          FromToWidget(
            fromLocation,
            (LocationModel val) {
              setState(() {
                fromLocation = val;
              });
            },
            // strLocVal,
            controller: widget.from,
            hint: "From",
            list: searchFromProvider,
          ),
          const Divider(),
          FromToWidget(
            toLocation,
            (LocationModel val) {
              setState(() {
                toLocation = val;
              });
            },
            // endLocVal,
            controller: widget.to,
            hint: "To",
            list: searchToProvider,
          ),
          const Divider(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 2.w,
            ),
            child: Row(
              children: [
                Consumer(
                  builder:
                      (BuildContext context, WidgetRef ref, Widget? child) {
                    return GestureDetector(
                      onTap: () async {
                        final current = DateTime.now();
                        DatePicker.showDatePicker(
                          context,
                          showTitleActions: true,
                          // minTime: DateTime(current.year, current.month, current.day),
                          maxTime: DateTime.now().add(const Duration(days: 3)),
                          onChanged: (date) {

                          },
                          onConfirm: (val) {
                            setState(() {
                              date = DateFormat("E, dd MMM").format(val);
                              if(val == DateTime.now()) {
                                widget.updateSelected(0);
                              }else if(val == DateTime.now().add(const Duration(days: 1))){
                                widget.updateSelected(1);
                              }else{
                                widget.updateSelected(3);
                              }
                            });
                            ref.read(repositoryProvider).updateDate(
                                DateFormat("yyyy-MM-dd").format(val));
                            ref.read(repositoryProvider).updateStartTime(
                                DateFormat("hh:MM:ss").format(val));
                          },
                          currentTime: DateTime.now(),
                          locale: LocaleType.en,
                        );
                      },
                      child: CalendarButton(
                        date: date ?? "",
                      ),
                    );
                  },
                  // child: ,
                ),
                SizedBox(
                  width: 4.w,
                ),
                Consumer(
                    builder:
                        (BuildContext context, WidgetRef ref, Widget? child) {
                    return GestureDetector(
                      onTap: () {
                        final val = DateTime.now();
                        setState(() {
                          date = DateFormat("E, dd MMM").format(val);
                          widget.updateSelected(0);
                          ref.read(repositoryProvider).updateDate(
                              DateFormat("yyyy-MM-dd").format(val));
                          ref.read(repositoryProvider).updateStartTime(
                              DateFormat("hh:MM:ss").format(val));
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: widget.selected == 0
                              ? Constants.primaryColor
                              : Colors.black,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        width: 23.w,
                        height: 5.5.h,
                        child: Center(
                          child: Text(
                            "Today",
                            style: GoogleFonts.roboto().copyWith(
                              fontSize: 11.sp,
                              color: widget.selected == 0
                                  ? Colors.black
                                  : Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    );
                  }
                ),
                SizedBox(
                  width: 2.w,
                ),
                Consumer(
                    builder:
                        (BuildContext context, WidgetRef ref, Widget? child) {
                    return GestureDetector(
                      onTap: () {
                        final val = DateTime.now().add(const Duration(days: 1));
                        setState(() {
                          date = DateFormat("E, dd MMM").format(val);
                          widget.updateSelected(1);
                          ref.read(repositoryProvider).updateDate(
                              DateFormat("yyyy-MM-dd").format(val));
                          ref.read(repositoryProvider).updateStartTime(
                              DateFormat("hh:MM:ss").format(val));
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: widget.selected == 1
                              ? Constants.primaryColor
                              : Colors.black,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        width: 23.w,
                        height: 5.5.h,
                        child: Center(
                          child: Text(
                            "Tomorrow",
                            style: GoogleFonts.roboto().copyWith(
                              fontSize: 11.sp,
                              color: widget.selected == 1
                                  ? Colors.black
                                  : Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    );
                  }
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CalendarButton extends StatelessWidget {
  const CalendarButton({super.key, required this.date});

  final String date;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.calendar_month,
          size: 22.sp,
        ),
        SizedBox(
          width: 1.w,
        ),
        SizedBox(
          width: 22.w,
          child: Column(
            children: [
              Text(
                "Date of journey",
                style: GoogleFonts.roboto()
                    .copyWith(fontSize: 7.sp, color: Colors.black45),
              ),
              Text(
                date,
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 9.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
