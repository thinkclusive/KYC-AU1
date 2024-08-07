import '/backend/api_requests/api_calls.dart';
import '/components/transection_list_item/transection_list_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/permissions_util.dart';
import 'history_widget.dart' show HistoryWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HistoryModel extends FlutterFlowModel<HistoryWidget> {
  ///  Local state fields for this page.

  List<dynamic> transections = [];
  void addToTransections(dynamic item) => transections.add(item);
  void removeFromTransections(dynamic item) => transections.remove(item);
  void removeAtIndexFromTransections(int index) => transections.removeAt(index);
  void insertAtIndexInTransections(int index, dynamic item) =>
      transections.insert(index, item);
  void updateTransectionsAtIndex(int index, Function(dynamic) updateFn) =>
      transections[index] = updateFn(transections[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (ListTransections)] action in History widget.
  ApiCallResponse? apiResultj57;
  // Model for TransectionListItem component.
  late TransectionListItemModel transectionListItemModel1;
  // Model for TransectionListItem component.
  late TransectionListItemModel transectionListItemModel2;

  @override
  void initState(BuildContext context) {
    transectionListItemModel1 =
        createModel(context, () => TransectionListItemModel());
    transectionListItemModel2 =
        createModel(context, () => TransectionListItemModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    transectionListItemModel1.dispose();
    transectionListItemModel2.dispose();
  }
}
