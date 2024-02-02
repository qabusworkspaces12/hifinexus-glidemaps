import '/flutter_flow/flutter_flow_util.dart';
import '/web_app_template/side_nav/side_nav_widget.dart';
import 'web_flow01_widget.dart' show WebFlow01Widget;
import 'package:flutter/material.dart';

class WebFlow01Model extends FlutterFlowModel<WebFlow01Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // State field(s) for variantName widget.
  FocusNode? variantNameFocusNode;
  TextEditingController? variantNameController;
  String? Function(BuildContext, String?)? variantNameControllerValidator;
  // State field(s) for sellingPrice widget.
  FocusNode? sellingPriceFocusNode;
  TextEditingController? sellingPriceController;
  String? Function(BuildContext, String?)? sellingPriceControllerValidator;
  // State field(s) for trackProfit widget.
  bool? trackProfitValue;
  // State field(s) for stockQuantity widget.
  FocusNode? stockQuantityFocusNode;
  TextEditingController? stockQuantityController;
  String? Function(BuildContext, String?)? stockQuantityControllerValidator;
  // State field(s) for checkLowAlert widget.
  bool? checkLowAlertValue;
  // State field(s) for checkAuto widget.
  bool? checkAutoValue;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    variantNameFocusNode?.dispose();
    variantNameController?.dispose();

    sellingPriceFocusNode?.dispose();
    sellingPriceController?.dispose();

    stockQuantityFocusNode?.dispose();
    stockQuantityController?.dispose();

    textFieldFocusNode2?.dispose();
    textController5?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
