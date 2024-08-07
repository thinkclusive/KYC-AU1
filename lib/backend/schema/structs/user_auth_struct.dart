// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserAuthStruct extends BaseStruct {
  UserAuthStruct({
    String? userName,
    String? userAvatar,
    String? email,
    String? phone,
  })  : _userName = userName,
        _userAvatar = userAvatar,
        _email = email,
        _phone = phone;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  set userName(String? val) => _userName = val;

  bool hasUserName() => _userName != null;

  // "userAvatar" field.
  String? _userAvatar;
  String get userAvatar => _userAvatar ?? '';
  set userAvatar(String? val) => _userAvatar = val;

  bool hasUserAvatar() => _userAvatar != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  static UserAuthStruct fromMap(Map<String, dynamic> data) => UserAuthStruct(
        userName: data['userName'] as String?,
        userAvatar: data['userAvatar'] as String?,
        email: data['email'] as String?,
        phone: data['phone'] as String?,
      );

  static UserAuthStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserAuthStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'userName': _userName,
        'userAvatar': _userAvatar,
        'email': _email,
        'phone': _phone,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'userName': serializeParam(
          _userName,
          ParamType.String,
        ),
        'userAvatar': serializeParam(
          _userAvatar,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserAuthStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserAuthStruct(
        userName: deserializeParam(
          data['userName'],
          ParamType.String,
          false,
        ),
        userAvatar: deserializeParam(
          data['userAvatar'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserAuthStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserAuthStruct &&
        userName == other.userName &&
        userAvatar == other.userAvatar &&
        email == other.email &&
        phone == other.phone;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([userName, userAvatar, email, phone]);
}

UserAuthStruct createUserAuthStruct({
  String? userName,
  String? userAvatar,
  String? email,
  String? phone,
}) =>
    UserAuthStruct(
      userName: userName,
      userAvatar: userAvatar,
      email: email,
      phone: phone,
    );
