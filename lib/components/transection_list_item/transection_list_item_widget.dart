import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'transection_list_item_model.dart';
export 'transection_list_item_model.dart';

class TransectionListItemWidget extends StatefulWidget {
  const TransectionListItemWidget({super.key});

  @override
  State<TransectionListItemWidget> createState() =>
      _TransectionListItemWidgetState();
}

class _TransectionListItemWidgetState extends State<TransectionListItemWidget> {
  late TransectionListItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TransectionListItemModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80.0,
      constraints: BoxConstraints(
        minHeight: 60.0,
        maxHeight: 80.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).accent2,
        ),
      ),
      child: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12.0, 14.0, 12.0, 14.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(
                  'https://picsum.photos/seed/659/600',
                  width: 40.0,
                  height: 40.0,
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'vsvbit9o' /* Creative Cloud */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        '6i4e9urh' /* Aug 25, 13:32 */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).accent1,
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'dtqcj5px' /* -฿365 */,
                  ),
                  textAlign: TextAlign.end,
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
