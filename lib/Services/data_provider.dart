import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_buddy/Models/location_response.dart';
import 'package:travel_buddy/Services/api_provider.dart';

import '../Models/location_model.dart';

final searchFromProvider = FutureProvider<LocationResponse>((ref) async {
  return ref.watch(userProvider).searchFrom();
});

final searchToProvider = FutureProvider<LocationResponse>((ref) async {
  return ref.watch(userProvider).searchTo();
});


