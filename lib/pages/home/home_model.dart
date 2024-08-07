import '/components/item2_widget.dart';
import '/components/shop_item_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import '/flutter_flow/permissions_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this page.

  bool isShowUserInfo = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ShopItem component.
  late ShopItemModel shopItemModel1;
  // Model for ShopItem component.
  late ShopItemModel shopItemModel2;
  // Model for item2 component.
  late Item2Model item2Model1;
  // Model for item2 component.
  late Item2Model item2Model2;
  // Model for item2 component.
  late Item2Model item2Model3;

  @override
  void initState(BuildContext context) {
    shopItemModel1 = createModel(context, () => ShopItemModel());
    shopItemModel2 = createModel(context, () => ShopItemModel());
    item2Model1 = createModel(context, () => Item2Model());
    item2Model2 = createModel(context, () => Item2Model());
    item2Model3 = createModel(context, () => Item2Model());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    shopItemModel1.dispose();
    shopItemModel2.dispose();
    item2Model1.dispose();
    item2Model2.dispose();
    item2Model3.dispose();
  }
}
