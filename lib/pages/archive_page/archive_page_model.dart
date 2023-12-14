import '/components/archive_card/archive_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'archive_page_widget.dart' show ArchivePageWidget;
import 'package:flutter/material.dart';

class ArchivePageModel extends FlutterFlowModel<ArchivePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ArchiveCard component.
  late ArchiveCardModel archiveCardModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    archiveCardModel = createModel(context, () => ArchiveCardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    archiveCardModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
