import '../database.dart';

class RatingsTable extends SupabaseTable<RatingsRow> {
  @override
  String get tableName => 'ratings';

  @override
  RatingsRow createRow(Map<String, dynamic> data) => RatingsRow(data);
}

class RatingsRow extends SupabaseDataRow {
  RatingsRow(super.data);

  @override
  SupabaseTable get table => RatingsTable();

  int get ratingId => getField<int>('rating_id')!;
  set ratingId(int value) => setField<int>('rating_id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  int? get vapeId => getField<int>('vape_id');
  set vapeId(int? value) => setField<int>('vape_id', value);

  double get rating => getField<double>('rating')!;
  set rating(double value) => setField<double>('rating', value);

  String? get comment => getField<String>('comment');
  set comment(String? value) => setField<String>('comment', value);

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
