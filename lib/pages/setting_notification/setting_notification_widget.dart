import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'setting_notification_model.dart';
export 'setting_notification_model.dart';

class SettingNotificationWidget extends StatefulWidget {
  const SettingNotificationWidget({super.key});

  @override
  State<SettingNotificationWidget> createState() =>
      _SettingNotificationWidgetState();
}

class _SettingNotificationWidgetState extends State<SettingNotificationWidget> {
  late SettingNotificationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingNotificationModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await _model.clearStatusbarColor(context);
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: Text(
              FFLocalizations.of(context).getText(
                '3a5052js' /* Notification Setting */,
              ),
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Outfit',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 22.0,
                    letterSpacing: 0.0,
                  ),
            ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 0.0),
            child: ListView(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              children: [
                SwitchListTile.adaptive(
                  value: _model.switchListTileValue1 ??= true,
                  onChanged: (newValue) async {
                    setState(() => _model.switchListTileValue1 = newValue!);
                  },
                  title: Text(
                    FFLocalizations.of(context).getText(
                      'pck39eux' /* Payment */,
                    ),
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Outfit',
                          letterSpacing: 0.0,
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                  activeColor: FlutterFlowTheme.of(context).primary,
                  activeTrackColor: FlutterFlowTheme.of(context).accent1,
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.circular(12.0),
                    ),
                  ),
                ),
                SwitchListTile.adaptive(
                  value: _model.switchListTileValue2 ??= true,
                  onChanged: (newValue) async {
                    setState(() => _model.switchListTileValue2 = newValue!);
                  },
                  title: Text(
                    FFLocalizations.of(context).getText(
                      'ray9ppal' /* Receive */,
                    ),
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Outfit',
                          letterSpacing: 0.0,
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                  activeColor: FlutterFlowTheme.of(context).primary,
                  activeTrackColor: FlutterFlowTheme.of(context).accent1,
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
                SwitchListTile.adaptive(
                  value: _model.switchListTileValue3 ??= true,
                  onChanged: (newValue) async {
                    setState(() => _model.switchListTileValue3 = newValue!);
                  },
                  title: Text(
                    FFLocalizations.of(context).getText(
                      'k6lsh4ft' /* Transfer */,
                    ),
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Outfit',
                          letterSpacing: 0.0,
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                  activeColor: FlutterFlowTheme.of(context).primary,
                  activeTrackColor: FlutterFlowTheme.of(context).accent1,
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
                SwitchListTile.adaptive(
                  value: _model.switchListTileValue4 ??= true,
                  onChanged: (newValue) async {
                    setState(() => _model.switchListTileValue4 = newValue!);
                  },
                  title: Text(
                    FFLocalizations.of(context).getText(
                      'i1q8km18' /* Transaction */,
                    ),
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Outfit',
                          letterSpacing: 0.0,
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                  activeColor: FlutterFlowTheme.of(context).primary,
                  activeTrackColor: FlutterFlowTheme.of(context).accent1,
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12.0),
                      bottomRight: Radius.circular(12.0),
                      topLeft: Radius.circular(0.0),
                      topRight: Radius.circular(0.0),
                    ),
                  ),
                ),
              ].divide(SizedBox(height: 2.0)),
            ),
          ),
        ),
      ),
    );
  }
}
