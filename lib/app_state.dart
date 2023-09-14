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
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<String> _Imgset = [
    'https://cdn.acidcow.com/pics/20210802/1627922968_uwss751m6o.jpg',
    'https://cdn.acidcow.com/pics/20210802/1627922969_vy4bbog3kc.jpg',
    'https://cdn.acidcow.com/pics/20210802/1627923004_qstu2z2814.jpg',
    'https://cdn.acidcow.com/pics/20210802/1627922973_ab67ovnv0i.jpg',
    'https://picsum.photos/seed/953/600',
    'https://picsum.photos/seed/301/600',
    'https://picsum.photos/seed/686/600',
    'https://picsum.photos/seed/214/600',
    'https://picsum.photos/seed/17/600',
    'https://picsum.photos/seed/195/600'
  ];
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
