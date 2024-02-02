import '../database.dart';

class PurchaseTypesTable extends SupabaseTable<PurchaseTypesRow> {
  @override
  String get tableName => 'purchase_types';

  @override
  PurchaseTypesRow createRow(Map<String, dynamic> data) =>
      PurchaseTypesRow(data);
}

class PurchaseTypesRow extends SupabaseDataRow {
  PurchaseTypesRow(super.data);

  @override
  SupabaseTable get table => PurchaseTypesTable();

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);
}
