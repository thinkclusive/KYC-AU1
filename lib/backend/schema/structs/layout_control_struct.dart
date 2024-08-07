// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LayoutControlStruct extends BaseStruct {
  LayoutControlStruct({
    bool? isShowUserInfo,
  }) : _isShowUserInfo = isShowUserInfo;

  // "isShowUserInfo" field.
  bool? _isShowUserInfo;
  bool get isShowUserInfo => _isShowUserInfo ?? true;
  set isShowUserInfo(bool? val) => _isShowUserInfo = val;

  bool hasIsShowUserInfo() => _isShowUserInfo != null;

  static LayoutControlStruct fromMap(Map<String, dynamic> data) =>
      LayoutControlStruct(
        isShowUserInfo: data['isShowUserInfo'] as bool?,
      );

  static LayoutControlStruct? maybeFromMap(dynamic data) => data is Map
      ? LayoutControlStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'isShowUserInfo': _isShowUserInfo,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'isShowUserInfo': serializeParam(
          _isShowUserInfo,
          ParamType.bool,
        ),
      }.withoutNulls;

  static LayoutControlStruct fromSerializableMap(Map<String, dynamic> data) =>
      LayoutControlStruct(
        isShowUserInfo: deserializeParam(
          data['isShowUserInfo'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'LayoutControlStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LayoutControlStruct &&
        isShowUserInfo == other.isShowUserInfo;
  }

  @override
  int get hashCode => const ListEquality().hash([isShowUserInfo]);
}

LayoutControlStruct createLayoutControlStruct({
  bool? isShowUserInfo,
}) =>
    LayoutControlStruct(
      isShowUserInfo: isShowUserInfo,
    );
