import '../database.dart';

class VapeProductsTable extends SupabaseTable<VapeProductsRow> {
  @override
  String get tableName => 'vape_products';

  @override
  VapeProductsRow createRow(Map<String, dynamic> data) => VapeProductsRow(data);
}

class VapeProductsRow extends SupabaseDataRow {
  VapeProductsRow(super.data);

  @override
  SupabaseTable get table => VapeProductsTable();

  int get vapeId => getField<int>('vape_id')!;
  set vapeId(int value) => setField<int>('vape_id', value);

  String get category => getField<String>('category')!;
  set category(String value) => setField<String>('category', value);

  String get model => getField<String>('model')!;
  set model(String value) => setField<String>('model', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String get variant => getField<String>('variant')!;
  set variant(String value) => setField<String>('variant', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  dynamic get capacities => getField<dynamic>('capacities');
  set capacities(dynamic value) => setField<dynamic>('capacities', value);

  double get price => getField<double>('price')!;
  set price(double value) => setField<double>('price', value);

  dynamic get quantities => getField<dynamic>('quantities');
  set quantities(dynamic value) => setField<dynamic>('quantities', value);

  String? get photoUrl => getField<String>('photo_url');
  set photoUrl(String? value) => setField<String>('photo_url', value);

  String get vapeproductid => getField<String>('vapeproductid')!;
  set vapeproductid(String value) => setField<String>('vapeproductid', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get lastModifiedAt => getField<DateTime>('last_modified_at');
  set lastModifiedAt(DateTime? value) =>
      setField<DateTime>('last_modified_at', value);

  int? get createdBy => getField<int>('created_by');
  set createdBy(int? value) => setField<int>('created_by', value);

  int? get lastModifiedBy => getField<int>('last_modified_by');
  set lastModifiedBy(int? value) => setField<int>('last_modified_by', value);
}
