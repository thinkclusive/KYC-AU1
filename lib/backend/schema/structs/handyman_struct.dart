// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HandymanStruct extends BaseStruct {
  HandymanStruct({
    String? title,
    String? image,
  })  : _title = title,
        _image = image;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  static HandymanStruct fromMap(Map<String, dynamic> data) => HandymanStruct(
        title: data['title'] as String?,
        image: data['image'] as String?,
      );

  static HandymanStruct? maybeFromMap(dynamic data) =>
      data is Map ? HandymanStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'image': _image,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
      }.withoutNulls;

  static HandymanStruct fromSerializableMap(Map<String, dynamic> data) =>
      HandymanStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'HandymanStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is HandymanStruct &&
        title == other.title &&
        image == other.image;
  }

  @override
  int get hashCode => const ListEquality().hash([title, image]);
}

HandymanStruct createHandymanStruct({
  String? title,
  String? image,
}) =>
    HandymanStruct(
      title: title,
      image: image,
    );
