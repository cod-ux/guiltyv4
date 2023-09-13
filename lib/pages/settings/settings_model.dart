import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SettingsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // Stores action output result for [Backend Call - API (update monthly budget)] action in Button widget.
  ApiCallResponse? apiResultwyz;
  // State field(s) for Exc_transaction widget.
  TextEditingController? excTransactionController;
  String? Function(BuildContext, String?)? excTransactionControllerValidator;
  // Stores action output result for [Backend Call - API (exclude transaction)] action in Button widget.
  ApiCallResponse? apiResultwyzblah;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    textController1?.dispose();
    excTransactionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
