import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
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
      _configEnableBio =
          prefs.getBool('ff_configEnableBio') ?? _configEnableBio;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_userAuth')) {
        try {
          final serializedData = prefs.getString('ff_userAuth') ?? '{}';
          _userAuth =
              UserAuthStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _configEnableBio = true;
  bool get configEnableBio => _configEnableBio;
  set configEnableBio(bool value) {
    _configEnableBio = value;
    prefs.setBool('ff_configEnableBio', value);
  }

  UserAuthStruct _userAuth = UserAuthStruct();
  UserAuthStruct get userAuth => _userAuth;
  set userAuth(UserAuthStruct value) {
    _userAuth = value;
    prefs.setString('ff_userAuth', value.serialize());
  }

  void updateUserAuthStruct(Function(UserAuthStruct) updateFn) {
    updateFn(_userAuth);
    prefs.setString('ff_userAuth', _userAuth.serialize());
  }
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
