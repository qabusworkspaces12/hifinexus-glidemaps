import '../database.dart';

class SupportCenterTable extends SupabaseTable<SupportCenterRow> {
  @override
  String get tableName => 'support_center';

  @override
  SupportCenterRow createRow(Map<String, dynamic> data) =>
      SupportCenterRow(data);
}

class SupportCenterRow extends SupabaseDataRow {
  SupportCenterRow(super.data);

  @override
  SupabaseTable get table => SupportCenterTable();

  int get supportId => getField<int>('support_id')!;
  set supportId(int value) => setField<int>('support_id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  int? get adminId => getField<int>('admin_id');
  set adminId(int? value) => setField<int>('admin_id', value);

  String get message => getField<String>('message')!;
  set message(String value) => setField<String>('message', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

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
