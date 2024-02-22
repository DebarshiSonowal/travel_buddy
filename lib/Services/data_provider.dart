import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_buddy/Models/LocationResponse/location_response.dart';
import 'package:travel_buddy/Models/SearchVehicle/search_vehicle.dart';
import 'package:travel_buddy/Services/api_provider.dart';
import 'package:travel_buddy/main.dart';

import '../Models/Layout/layout_response.dart';
import '../Models/Location/location_model.dart';

// String? date,strloc,endloc;

final searchFromProvider = FutureProvider<LocationResponse>((ref) async {
  return ref.watch(apiProvider).searchFrom();
});

final searchToProvider = FutureProvider<LocationResponse>((ref) async {
  return ref.watch(apiProvider).searchTo();
});

final searchVehicleProvider =
    FutureProvider<SearchVehicleResponse>((ref) async {
  return ref.watch(apiProvider).searchVehicle(
      ref.watch(repositoryProvider).dateVal?? "",
      ref.watch(repositoryProvider).strLocVal ?? "",
      ref.watch(repositoryProvider).endLocVal ?? "");
});
final searchLayoutProvider = FutureProvider<LayoutResponse>((ref) async {
  return ref.watch(apiProvider).getLayout(
      ref.watch(repositoryProvider).route_id ?? "",
      ref.watch(repositoryProvider).dateVal ?? "",
      ref.watch(repositoryProvider).start_time ?? "");
});
