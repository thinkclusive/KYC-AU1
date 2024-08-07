// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_idensic_mobile_sdk_plugin/flutter_idensic_mobile_sdk_plugin.dart';

Future<String> sumsubkyc() async {
  // Add your function code here!
  // From your backend get an access token for the applicant to be verified.
  // The token must be generated with `levelName` and `userId`,
  // where `levelName` is the name of a level configured in your dashboard.
  //
  // The sdk will work in the production or in the sandbox environment
  // depend on which one the `accessToken` has been generated on.
  //
  final String accessToken =
      "sbx:bCrEe2zWDeza701kr0v39Rtn.R4CERRCB1oMyGg0jc1gq3WgE3vwVHSnW";

  // The access token has a limited lifespan and when it's expired, you must provide another one.
  // So be prepared to get a new token from your backend.
  final onTokenExpiration = () async {
    // call your backend to fetch a new access token (this is just an example)
    return Future<String>.delayed(
        Duration(seconds: 2), () => "your new access token");
  };

  final SNSStatusChangedHandler onStatusChanged =
      (SNSMobileSDKStatus newStatus, SNSMobileSDKStatus prevStatus) {
    print("The SDK status was changed: $prevStatus -> $newStatus");
  };

  final snsMobileSDK = SNSMobileSDK.init(accessToken, onTokenExpiration)
      .withHandlers(
          // optional handlers
          onStatusChanged: onStatusChanged)
      .withDebug(true) // set debug mode if required
      .withLocale(Locale(
          "en")) // optional, for cases when you need to override the system locale
      .build();

  final SNSMobileSDKResult result = await snsMobileSDK.launch();

  return result.toString();
}
