import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'login_o_auth_widget.dart' show LoginOAuthWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_auth/local_auth.dart';
import 'package:provider/provider.dart';

class LoginOAuthModel extends FlutterFlowModel<LoginOAuthWidget> {
  ///  Local state fields for this page.

  bool isPincode = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool bioResult = false;
  bool bioAuth = false;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
