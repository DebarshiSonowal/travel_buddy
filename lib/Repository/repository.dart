import 'package:flutter/cupertino.dart';
import 'package:travel_buddy/Models/Vehicle/vehicle_model.dart';

import '../Models/ContactDetails/contact_details.dart';
import '../Models/Layout/layout_model.dart';
import '../Models/Layout/layout_response.dart';

class Repository with ChangeNotifier {
  String dateVal = "",
      strLocVal = "",
      endLocVal = "",
      startLoc = "",
      endLoc = "",
      route_id = "",
      start_time = "";

  List<LayoutModel> selectedLayouts = [];
  LayoutResponse? layoutResponse;
  VehicleModel? selectedVehicle;
  List<ContactDetails> contactDetails = [];

  void updateDate(String val) {
    dateVal = val;
    notifyListeners();
  }

  void addLayouts(LayoutModel val, LayoutResponse? data) {
    selectedLayouts.add(val);
    layoutResponse = data;
    debugPrint(
        "Layouts added ${selectedLayouts.map((e) => debugPrint("[${e.row},${e.column}]")).toList()} ${val} ${layoutResponse?.trip_id} ${data}");
    notifyListeners();
  }

  void addContactDetails(ContactDetails val) {
    contactDetails.add(val);
    notifyListeners();
  }

  void setAllLayouts(LayoutResponse val) {
    layoutResponse = val;
    notifyListeners();
  }

  void removeLayout(LayoutModel val) {
    selectedLayouts.remove(val);
    debugPrint(
        "Layouts removed ${selectedLayouts.map((e) => debugPrint("[${e.row} ${e.column}]")).toList()}");
    notifyListeners();
  }

  void removeContactDetails(ContactDetails val) {
    contactDetails.remove(val);
    notifyListeners();
  }

  void clearLayouts() {
    selectedLayouts.clear();
    notifyListeners();
  }

  void clearContactDetails() {
    contactDetails.clear();
    contactDetails = [];
    debugPrint("Contact details cleared ${contactDetails.length}");
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

  void updateIsSelectedContactDetails(int index, bool isSelected) {
    contactDetails[index].is_selected = isSelected;
    notifyListeners();
  }

  void updateContactDetails(int index,ContactDetails val){
    contactDetails[index] = val;
    notifyListeners();
  }

}
