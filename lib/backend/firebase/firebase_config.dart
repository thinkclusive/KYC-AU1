import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDWT03Ux1hGBN_J-5_lG6BtYS2SFWt3f_E",
            authDomain: "aspirepayment-aaef4.firebaseapp.com",
            projectId: "aspirepayment-aaef4",
            storageBucket: "aspirepayment-aaef4.appspot.com",
            messagingSenderId: "759856793150",
            appId: "1:759856793150:web:82aeee3492f0fef8d5f36f",
            measurementId: "G-CJP93P7MPJ"));
  } else {
    await Firebase.initializeApp();
  }
}
