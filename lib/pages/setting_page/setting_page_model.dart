import '/components/dark_light_switch/dark_light_switch_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'setting_page_widget.dart' show SettingPageWidget;
import 'package:flutter/material.dart';

class SettingPageModel extends FlutterFlowModel<SettingPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for DarkLightSwitch component.
  late DarkLightSwitchModel darkLightSwitchModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    darkLightSwitchModel = createModel(context, () => DarkLightSwitchModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    darkLightSwitchModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
