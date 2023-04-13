import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/detail/detail_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BookclikedModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for detail component.
  late DetailModel detailModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    detailModel = createModel(context, () => DetailModel());
  }

  void dispose() {
    detailModel.dispose();
  }

  /// Additional helper methods are added here.

}
