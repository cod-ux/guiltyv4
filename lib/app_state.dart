import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _Imgset = prefs.getStringList('ff_Imgset') ?? _Imgset;
    });
    _safeInit(() {
      _Thismonth = prefs.getString('ff_Thismonth') ?? _Thismonth;
    });
    _safeInit(() {
      _Today = prefs.getString('ff_Today') ?? _Today;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<String> _Imgset = [];
  List<String> get Imgset => _Imgset;
  set Imgset(List<String> _value) {
    _Imgset = _value;
    prefs.setStringList('ff_Imgset', _value);
  }

  void addToImgset(String _value) {
    _Imgset.add(_value);
    prefs.setStringList('ff_Imgset', _Imgset);
  }

  void removeFromImgset(String _value) {
    _Imgset.remove(_value);
    prefs.setStringList('ff_Imgset', _Imgset);
  }

  void removeAtIndexFromImgset(int _index) {
    _Imgset.removeAt(_index);
    prefs.setStringList('ff_Imgset', _Imgset);
  }

  void updateImgsetAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _Imgset[_index] = updateFn(_Imgset[_index]);
    prefs.setStringList('ff_Imgset', _Imgset);
  }

  void insertAtIndexInImgset(int _index, String _value) {
    _Imgset.insert(_index, _value);
    prefs.setStringList('ff_Imgset', _Imgset);
  }

  String _Thismonth = 'This Month';
  String get Thismonth => _Thismonth;
  set Thismonth(String _value) {
    _Thismonth = _value;
    prefs.setString('ff_Thismonth', _value);
  }

  String _Today = 'Today';
  String get Today => _Today;
  set Today(String _value) {
    _Today = _value;
    prefs.setString('ff_Today', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
