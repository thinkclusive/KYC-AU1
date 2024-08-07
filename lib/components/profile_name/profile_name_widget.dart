import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'profile_name_model.dart';
export 'profile_name_model.dart';

class ProfileNameWidget extends StatefulWidget {
  const ProfileNameWidget({
    super.key,
    String? name,
    this.image,
  }) : this.name = name ?? 'user';

  final String name;
  final String? image;

  @override
  State<ProfileNameWidget> createState() => _ProfileNameWidgetState();
}

class _ProfileNameWidgetState extends State<ProfileNameWidget> {
  late ProfileNameModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileNameModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130.0,
      height: 37.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primary,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              widget!.image!,
              width: 37.0,
              height: 37.0,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-1.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      'ms7hiiqb' /* Welcome, */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).info,
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    widget!.name,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).info,
                          letterSpacing: 0.19,
                          lineHeight: 1.33,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
