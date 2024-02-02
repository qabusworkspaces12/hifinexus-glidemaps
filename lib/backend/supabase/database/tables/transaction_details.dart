import '../database.dart';

class TransactionDetailsTable extends SupabaseTable<TransactionDetailsRow> {
  @override
  String get tableName => 'transaction_details';

  @override
  TransactionDetailsRow createRow(Map<String, dynamic> data) =>
      TransactionDetailsRow(data);
}

class TransactionDetailsRow extends SupabaseDataRow {
  TransactionDetailsRow(super.data);

  @override
  SupabaseTable get table => TransactionDetailsTable();

  int get transactionId => getField<int>('transaction_id')!;
  set transactionId(int value) => setField<int>('transaction_id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  int? get orderId => getField<int>('order_id');
  set orderId(int? value) => setField<int>('order_id', value);

  double get totalAmount => getField<double>('total_amount')!;
  set totalAmount(double value) => setField<double>('total_amount', value);

  DateTime? get transactionDate => getField<DateTime>('transaction_date');
  set transactionDate(DateTime? value) =>
      setField<DateTime>('transaction_date', value);

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
