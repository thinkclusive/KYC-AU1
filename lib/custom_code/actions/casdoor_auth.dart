// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
// import 'package:casdoor_flutter_sdk/casdoor.dart';
// import 'package:casdoor_flutter_sdk/casdoor_flutter_sdk_config.dart';
// import 'package:casdoor_flutter_sdk/casdoor_flutter_sdk_platform_interface.dart';
import 'package:casdoor_flutter_sdk/casdoor_flutter_sdk.dart';
import 'package:shared_preferences/shared_preferences.dart';

final AuthConfig _config = AuthConfig(
  clientId: '845587b9caae91ae69ef',
  serverUrl: 'https://auth.hayaservice.com',
  organizationName: 'aspire',
  appName: 'wallet',
  redirectUri: 'http://localhost:9000/callback.html',
  callbackUrlScheme: 'casdoor',
);

Future casdoorAuth() async {
  String _token = 'User is not logged in';
  final platform = await CasdoorFlutterSdkPlatform().getPlatformVersion();
  String callbackUri;
  if (platform == "web") {
    callbackUri = "${_config.redirectUri}.html";
  } else {
    callbackUri = "${_config.callbackUrlScheme}://callback";
  }
  _config.redirectUri = callbackUri;
  final Casdoor _casdoor = Casdoor(config: _config);
  String result = '';
  try {
    result = await _casdoor.show();
  } catch (e) {
    return;
  }

  // Get code
  final code = Uri.parse(result).queryParameters['code'] ?? "";
  final response = await _casdoor.requestOauthAccessToken(code);

  _token = jsonDecode(response.body)["access_token"] as String;
  if (_token != '') {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('access_token', _token);

    Map<String, dynamic> map = _casdoor.decodedToken(_token);
    FFAppState().update((s) {
      s.userAuth = UserAuthStruct(
          userName: map['name'] as String,
          userAvatar: map['avatar'] as String,
          email: map['email'] as String,
          phone: map['phone'] as String);
    } as VoidCallback);
  }
}
