import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_buddy/Constants/routes.dart';
import 'package:travel_buddy/Router/navigator.dart';
import 'package:travel_buddy/Services/data_provider.dart';
import 'package:travel_buddy/main.dart';

import '../../Constants/assets.dart';
import '../../Constants/constants.dart';
import '../../Models/SearchVehicle/search_vehicle.dart';
import '../../Models/Vehicle/vehicle_model.dart';
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
                        onTap: () {},
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
                          final item =
                              data.data?.vehicle_info.first.counter_info[index];
                          return CounterItem(item: item!);
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: 3.w,
                          );
                        },
                        itemCount: (data.data?.vehicle_info.isNotEmpty??false)?data.data!.vehicle_info.first.counter_info.length:0,
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
                          final item = data.data?.vehicle_info[index];
                          return VehicleItem(
                            item: item!,
                            onTap: (VehicleModel val) {
                              ref.read(repositoryProvider).selectVehicle(item);
                              // ref.read(repositoryProvider).updateStartTime("");
                              ref.read(repositoryProvider).updateRouteId("${item.route_info.first.id}");
                              Navigation.instance.navigate(Routes.seatLayout);
                            },
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: 2.h,
                          );
                        },
                        itemCount: data.data?.vehicle_info.length??0,
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
