import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'shop_item_model.dart';
export 'shop_item_model.dart';

class ShopItemWidget extends StatefulWidget {
  const ShopItemWidget({
    super.key,
    required this.title,
    String? image,
  }) : this.image = image ??
            'https://images.unsplash.com/photo-1549947690-3c2a8bbc4096?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw1fHxvdXRkb29yJTIwcmVzdHVyYW50fGVufDB8fHx8MTY5NjczMjM4MXww&ixlib=rb-4.0.3&q=80&w=1080';

  final String? title;
  final String image;

  @override
  State<ShopItemWidget> createState() => _ShopItemWidgetState();
}

class _ShopItemWidgetState extends State<ShopItemWidget> {
  late ShopItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShopItemModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: FlutterFlowTheme.of(context).secondaryBackground,
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Stack(
        alignment: AlignmentDirectional(0.0, 1.0),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              widget!.image,
              width: 120.0,
              height: 160.0,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 1.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
              child: Text(
                valueOrDefault<String>(
                  widget!.title,
                  'Zinga',
                ),
                style: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
