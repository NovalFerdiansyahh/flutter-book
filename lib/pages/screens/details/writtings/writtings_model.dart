import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/bookreview/bookreview_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WrittingsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for bookreview component.
  late BookreviewModel bookreviewModel1;
  // Model for bookreview component.
  late BookreviewModel bookreviewModel2;
  // Model for bookreview component.
  late BookreviewModel bookreviewModel3;
  // Model for bookreview component.
  late BookreviewModel bookreviewModel4;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    bookreviewModel1 = createModel(context, () => BookreviewModel());
    bookreviewModel2 = createModel(context, () => BookreviewModel());
    bookreviewModel3 = createModel(context, () => BookreviewModel());
    bookreviewModel4 = createModel(context, () => BookreviewModel());
  }

  void dispose() {
    bookreviewModel1.dispose();
    bookreviewModel2.dispose();
    bookreviewModel3.dispose();
    bookreviewModel4.dispose();
  }

  /// Additional helper methods are added here.

}
