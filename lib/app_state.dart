import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

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

  List<String> _Imgset = [
    'https://sheownsit.com/wp-content/uploads/2016/05/2-money-meme.jpg',
    'https://i.pinimg.com/originals/bd/8c/ee/bd8cee67f8338847e3b25c04cb6855b2.jpg',
    'https://www.mindcorp.co.uk/wp-content/uploads/2021/03/Budget-Meme_2-days.jpg',
    'https://media.makeameme.org/created/what-is-this-qs0qbz.jpg',
    'https://tvgag.com/content/quotes/2188-jpg.jpg',
    'https://i.imgflip.com/1zhk11.jpg',
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.tc-zDVrC699xa-8AzgboQQHaIf%26pid%3DApi&f=1&ipt=eee89af7f182b7ba95af5dca730c579e7670a21dbdc1466450cf4acfd95d0e3f&ipo=images',
    'https://www.theloadedpig.com/wp-content/uploads/2020/09/Student-Loans-Meme-Personal-Finance-101-The-Loaded-Pig.png'
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

  DateTime? _startdatelocal;
  DateTime? get startdatelocal => _startdatelocal;
  set startdatelocal(DateTime? _value) {
    _startdatelocal = _value;
  }

  double _savingsdiff = 0.0;
  double get savingsdiff => _savingsdiff;
  set savingsdiff(double _value) {
    _savingsdiff = _value;
  }

  double _budgetdiff = 0.0;
  double get budgetdiff => _budgetdiff;
  set budgetdiff(double _value) {
    _budgetdiff = _value;
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
