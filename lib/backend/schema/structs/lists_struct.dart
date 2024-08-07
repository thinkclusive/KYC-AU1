// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListsStruct extends BaseStruct {
  ListsStruct({
    List<HandymanStruct>? handyman,
  }) : _handyman = handyman;

  // "handyman" field.
  List<HandymanStruct>? _handyman;
  List<HandymanStruct> get handyman => _handyman ?? const [];
  set handyman(List<HandymanStruct>? val) => _handyman = val;

  void updateHandyman(Function(List<HandymanStruct>) updateFn) {
    updateFn(_handyman ??= []);
  }

  bool hasHandyman() => _handyman != null;

  static ListsStruct fromMap(Map<String, dynamic> data) => ListsStruct(
        handyman: getStructList(
          data['handyman'],
          HandymanStruct.fromMap,
        ),
      );

  static ListsStruct? maybeFromMap(dynamic data) =>
      data is Map ? ListsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'handyman': _handyman?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'handyman': serializeParam(
          _handyman,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static ListsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ListsStruct(
        handyman: deserializeStructParam<HandymanStruct>(
          data['handyman'],
          ParamType.DataStruct,
          true,
          structBuilder: HandymanStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ListsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ListsStruct &&
        listEquality.equals(handyman, other.handyman);
  }

  @override
  int get hashCode => const ListEquality().hash([handyman]);
}

ListsStruct createListsStruct() => ListsStruct();
