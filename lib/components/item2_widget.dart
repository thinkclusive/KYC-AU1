import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'item2_model.dart';
export 'item2_model.dart';

class Item2Widget extends StatefulWidget {
  const Item2Widget({
    super.key,
    required this.title,
    String? image,
  }) : this.image = image ??
            'https://images.unsplash.com/photo-1621905251189-08b45d6a269e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxNnx8aGFuZHltYW58ZW58MHx8fHwxNzE3NjQzMTQ3fDA&ixlib=rb-4.0.3&q=80&w=1080';

  final String? title;
  final String image;

  @override
  State<Item2Widget> createState() => _Item2WidgetState();
}

class _Item2WidgetState extends State<Item2Widget> {
  late Item2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Item2Model());
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(0.0),
              topRight: Radius.circular(0.0),
            ),
            child: Image.network(
              widget!.image,
              width: 100.0,
              height: 100.0,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                valueOrDefault<String>(
                  widget!.title,
                  'handy man',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
