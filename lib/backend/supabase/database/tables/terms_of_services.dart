import '../database.dart';

class TermsOfServicesTable extends SupabaseTable<TermsOfServicesRow> {
  @override
  String get tableName => 'terms_of_services';

  @override
  TermsOfServicesRow createRow(Map<String, dynamic> data) =>
      TermsOfServicesRow(data);
}

class TermsOfServicesRow extends SupabaseDataRow {
  TermsOfServicesRow(super.data);

  @override
  SupabaseTable get table => TermsOfServicesTable();

  int get termsId => getField<int>('terms_id')!;
  set termsId(int value) => setField<int>('terms_id', value);

  String get content => getField<String>('content')!;
  set content(String value) => setField<String>('content', value);

  String get version => getField<String>('version')!;
  set version(String value) => setField<String>('version', value);

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
