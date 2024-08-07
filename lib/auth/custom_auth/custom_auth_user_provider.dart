import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class AspireWalletAuthUser {
  AspireWalletAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<AspireWalletAuthUser> aspireWalletAuthUserSubject =
    BehaviorSubject.seeded(AspireWalletAuthUser(loggedIn: false));
Stream<AspireWalletAuthUser> aspireWalletAuthUserStream() =>
    aspireWalletAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
