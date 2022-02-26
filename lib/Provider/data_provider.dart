import 'package:flutter/material.dart';

class DataProvider with ChangeNotifier {
  String _state = 'Home';
  String _ebillstate = 'Spot';
  String _ebillSpotstate = 'Daily Trading';

  String _tradingstate = 'Spot';

  String get state {
    return _state;
  }

  void setstate(data) {
    _state = data;
    notifyListeners();
  }

  String get ebillstate {
    return _ebillstate;
  }

  void setebillstate(data) {
    _ebillstate = data;
    notifyListeners();
  }

  String get ebillSpotstate {
    return _ebillSpotstate;
  }

  void setebillSpotstate(data) {
    _ebillSpotstate = data;
    notifyListeners();
  }

  String get tradingstate {
    return _tradingstate;
  }

  void setTradingstate(data) {
    _tradingstate = data;
    notifyListeners();
  }
}
