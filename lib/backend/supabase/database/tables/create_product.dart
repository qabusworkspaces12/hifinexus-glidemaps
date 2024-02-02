import '../database.dart';

class CreateProductTable extends SupabaseTable<CreateProductRow> {
  @override
  String get tableName => 'CreateProduct';

  @override
  CreateProductRow createRow(Map<String, dynamic> data) =>
      CreateProductRow(data);
}

class CreateProductRow extends SupabaseDataRow {
  CreateProductRow(super.data);

  @override
  SupabaseTable get table => CreateProductTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
