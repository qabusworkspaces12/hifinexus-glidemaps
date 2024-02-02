import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'inventory_options_model.dart';
export 'inventory_options_model.dart';

class InventoryOptionsWidget extends StatefulWidget {
  const InventoryOptionsWidget({super.key});

  @override
  State<InventoryOptionsWidget> createState() => _InventoryOptionsWidgetState();
}

class _InventoryOptionsWidgetState extends State<InventoryOptionsWidget> {
  late InventoryOptionsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InventoryOptionsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FlutterFlowDropDown<String>(
      controller: _model.dropDownValueController ??=
          FormFieldController<String>(null),
      options: const ['ITEMS', 'ITEMS GROUP', 'CATEGORIES', 'INVENTORY ADJUSTMENT'],
      onChanged: (val) => setState(() => _model.dropDownValue = val),
      width: 224.0,
      height: 50.0,
      textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: 'Days One',
            color: FlutterFlowTheme.of(context).primaryText,
            fontSize: 14.0,
          ),
      hintText: 'INVENTORIES',
      fillColor: FlutterFlowTheme.of(context).primaryBackground,
      elevation: 2.0,
      borderColor: FlutterFlowTheme.of(context).primaryBackground,
      borderWidth: 2.0,
      borderRadius: 0.0,
      margin: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
      hidesUnderline: true,
      isOverButton: true,
      isSearchable: false,
      isMultiSelect: false,
    );
  }
}
