// Flutter web plugin registrant file.
//
// Generated file. Do not edit.
//

// @dart = 2.13
// ignore_for_file: type=lint

import 'package:casdoor_flutter_sdk/src/casdoor_flutter_sdk_web.dart';
import 'package:firebase_core_web/firebase_core_web.dart';
import 'package:firebase_performance_web/firebase_performance_web.dart';
import 'package:flutter_inappwebview_web/web/main.dart';
import 'package:permission_handler_html/permission_handler_html.dart';
import 'package:shared_preferences_web/shared_preferences_web.dart';
import 'package:url_launcher_web/url_launcher_web.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void registerPlugins([final Registrar? pluginRegistrar]) {
  final Registrar registrar = pluginRegistrar ?? webPluginRegistrar;
  CasdoorFlutterSdkWeb.registerWith(registrar);
  FirebaseCoreWeb.registerWith(registrar);
  FirebasePerformanceWeb.registerWith(registrar);
  InAppWebViewFlutterPlugin.registerWith(registrar);
  WebPermissionHandler.registerWith(registrar);
  SharedPreferencesPlugin.registerWith(registrar);
  UrlLauncherPlugin.registerWith(registrar);
  registrar.registerMessageHandler();
}
