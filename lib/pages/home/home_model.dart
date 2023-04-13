import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/bookcard/bookcard_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Models for bookcard dynamic component.
  late FlutterFlowDynamicModels<BookcardModel> bookcardModels;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    bookcardModels = FlutterFlowDynamicModels(() => BookcardModel());
  }

  void dispose() {
    bookcardModels.dispose();
  }

  /// Additional helper methods are added here.

}
