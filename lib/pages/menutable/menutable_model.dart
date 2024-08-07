import '/components/item_food/item_food_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'menutable_widget.dart' show MenutableWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MenutableModel extends FlutterFlowModel<MenutableWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for Item_food component.
  late ItemFoodModel itemFoodModel1;
  // Model for Item_food component.
  late ItemFoodModel itemFoodModel2;
  // Model for Item_food component.
  late ItemFoodModel itemFoodModel3;

  @override
  void initState(BuildContext context) {
    itemFoodModel1 = createModel(context, () => ItemFoodModel());
    itemFoodModel2 = createModel(context, () => ItemFoodModel());
    itemFoodModel3 = createModel(context, () => ItemFoodModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    itemFoodModel1.dispose();
    itemFoodModel2.dispose();
    itemFoodModel3.dispose();
  }
}
