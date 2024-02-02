import '../database.dart';

class CreateCategoryTable extends SupabaseTable<CreateCategoryRow> {
  @override
  String get tableName => 'createCategory';

  @override
  CreateCategoryRow createRow(Map<String, dynamic> data) =>
      CreateCategoryRow(data);
}

class CreateCategoryRow extends SupabaseDataRow {
  CreateCategoryRow(super.data);

  @override
  SupabaseTable get table => CreateCategoryTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get category => getField<String>('category')!;
  set category(String value) => setField<String>('category', value);
}
