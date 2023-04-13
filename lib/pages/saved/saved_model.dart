import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/bookfav/bookfav_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SavedModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for bookfav component.
  late BookfavModel bookfavModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    bookfavModel = createModel(context, () => BookfavModel());
  }

  void dispose() {
    textController?.dispose();
    bookfavModel.dispose();
  }

  /// Additional helper methods are added here.

}
