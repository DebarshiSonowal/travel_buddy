import 'package:flutter/cupertino.dart';

class Repository with ChangeNotifier {
  String dateVal = "",
      strLocVal = "",
      endLocVal = "",
      startLoc = "",
      endLoc = "";

  void updateDate(String val) {
    dateVal = val;
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

  void updateEnd(String val) {
    endLoc = val;
    notifyListeners();
  }
}
