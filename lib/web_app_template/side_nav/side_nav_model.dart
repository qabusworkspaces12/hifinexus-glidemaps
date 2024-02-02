import '/components/inventory_options_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'side_nav_widget.dart' show SideNavWidget;
import 'package:flutter/material.dart';

class SideNavModel extends FlutterFlowModel<SideNavWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // Model for InventoryOptions component.
  late InventoryOptionsModel inventoryOptionsModel;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    inventoryOptionsModel = createModel(context, () => InventoryOptionsModel());
  }

  @override
  void dispose() {
    inventoryOptionsModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
