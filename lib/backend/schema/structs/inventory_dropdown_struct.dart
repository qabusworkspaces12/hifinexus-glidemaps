// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InventoryDropdownStruct extends BaseStruct {
  InventoryDropdownStruct({
    List<Inventory>? options,
  }) : _options = options;

  // "Options" field.
  List<Inventory>? _options;
  List<Inventory> get options => _options ?? const [];
  set options(List<Inventory>? val) => _options = val;
  void updateOptions(Function(List<Inventory>) updateFn) =>
      updateFn(_options ??= []);
  bool hasOptions() => _options != null;

  static InventoryDropdownStruct fromMap(Map<String, dynamic> data) =>
      InventoryDropdownStruct(
        options: getEnumList<Inventory>(data['Options']),
      );

  static InventoryDropdownStruct? maybeFromMap(dynamic data) => data is Map
      ? InventoryDropdownStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Options': _options?.map((e) => e.serialize()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Options': serializeParam(
          _options,
          ParamType.Enum,
          true,
        ),
      }.withoutNulls;

  static InventoryDropdownStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      InventoryDropdownStruct(
        options: deserializeParam<Inventory>(
          data['Options'],
          ParamType.Enum,
          true,
        ),
      );

  @override
  String toString() => 'InventoryDropdownStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is InventoryDropdownStruct &&
        listEquality.equals(options, other.options);
  }

  @override
  int get hashCode => const ListEquality().hash([options]);
}

InventoryDropdownStruct createInventoryDropdownStruct() =>
    InventoryDropdownStruct();
