import '../database.dart';

class PaymentMethodsTable extends SupabaseTable<PaymentMethodsRow> {
  @override
  String get tableName => 'payment_methods';

  @override
  PaymentMethodsRow createRow(Map<String, dynamic> data) =>
      PaymentMethodsRow(data);
}

class PaymentMethodsRow extends SupabaseDataRow {
  PaymentMethodsRow(super.data);

  @override
  SupabaseTable get table => PaymentMethodsTable();

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);
}
