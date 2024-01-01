import 'package:flutter/cupertino.dart';
import 'package:travel_buddy/Models/Vehicle/vehicle_model.dart';

import '../Models/Layout/layout_model.dart';

class Repository with ChangeNotifier {
  String dateVal = "",
      strLocVal = "",
      endLocVal = "",
      startLoc = "",
      endLoc = "",
      route_id = "",
      start_time = "";

  List<LayoutModel> selectedLayouts = [];

  VehicleModel? selectedVehicle;

  void updateDate(String val) {
    dateVal = val;
    notifyListeners();
  }

  void addLayouts(LayoutModel val) {
    selectedLayouts.add(val);
    notifyListeners();
  }

  void removeLayout(int index) {
    selectedLayouts.removeAt(index);
    notifyListeners();
  }

  void clearLayouts() {
    selectedLayouts.clear();
    notifyListeners();
  }

  void selectVehicle(VehicleModel? val) {
    selectedVehicle = val;
    notifyListeners();
  }

  void updateStartLoc(String val) {
    strLocVal = val;
    notifyListeners();
  }

  void updateStart(String val) {
    startLoc = val;
    notifyListeners();
  }

  void updateEndLoc(String val) {
    endLocVal = val;
    notifyListeners();
  }

  void updateRouteId(String val) {
    route_id = val;
    notifyListeners();
  }

  void updateStartTime(String val) {
    start_time = val;
    notifyListeners();
  }

  void updateEnd(String val) {
    endLoc = val;
    notifyListeners();
  }
}
