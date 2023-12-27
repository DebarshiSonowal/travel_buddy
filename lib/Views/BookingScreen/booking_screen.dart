import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/Constants/routes.dart';
import 'package:travel_buddy/Router/navigator.dart';
import 'package:travel_buddy/Services/data_provider.dart';

import '../../Constants/assets.dart';
import '../../Constants/constants.dart';
import '../../Models/SearchVehicle/search_vehicle.dart';
import '../../Widgets/loading_dialog.dart';
import 'Widgets/booking_app_bar.dart';
import 'Widgets/counter_item.dart';
import 'Widgets/stats_widget.dart';
import 'Widgets/vehicle_item.dart';

class BookingScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(searchVehicleProvider);
    // final update = ref.read(selectedProvider.notifier);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      const BookingAppBar(),
                      GestureDetector(
                        onTap: () {
                          Navigation.instance.navigate(Routes.seatLayout);
                        },
                        child: const StatsWidget(),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 9.h,
                  child: data.when(
                    data: (SearchVehicleResponse data) {
                      return ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return const CounterItem();
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: 3.w,
                          );
                        },
                        itemCount: data.counterInfo.length,
                      );
                    },
                    error: (err, s) {
                      debugPrint(err.toString());
                      return Container();
                    },
                    loading: () => Center(
                      child: LoadingDialog(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                SizedBox(
                  width: double.infinity,
                  child: data.when(
                    data: (SearchVehicleResponse data) {
                      return ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return const VehicleItem();
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: 2.h,
                          );
                        },
                        itemCount: data.vehicleInfo.length,
                      );
                    },
                    error: (err, s) {
                      debugPrint(err.toString());
                      return Container();
                    },
                    loading: () => Center(
                      child: LoadingDialog(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
