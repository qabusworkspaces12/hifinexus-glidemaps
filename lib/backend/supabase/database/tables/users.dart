import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(super.data);

  @override
  SupabaseTable get table => UsersTable();

  int get userId => getField<int>('user_id')!;
  set userId(int value) => setField<int>('user_id', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  String get role => getField<String>('role')!;
  set role(String value) => setField<String>('role', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get lastModifiedAt => getField<DateTime>('last_modified_at');
  set lastModifiedAt(DateTime? value) =>
      setField<DateTime>('last_modified_at', value);

  int? get createdBy => getField<int>('created_by');
  set createdBy(int? value) => setField<int>('created_by', value);

  int? get lastModifiedBy => getField<int>('last_modified_by');
  set lastModifiedBy(int? value) => setField<int>('last_modified_by', value);

  String? get password => getField<String>('password');
  set password(String? value) => setField<String>('password', value);

  int? get phoneNumber => getField<int>('phone_number');
  set phoneNumber(int? value) => setField<int>('phone_number', value);

  String? get displayName => getField<String>('display_name');
  set displayName(String? value) => setField<String>('display_name', value);

  String get username => getField<String>('username')!;
  set username(String value) => setField<String>('username', value);

  String? get bio => getField<String>('bio');
  set bio(String? value) => setField<String>('bio', value);

  String? get photoUrl => getField<String>('photo_url');
  set photoUrl(String? value) => setField<String>('photo_url', value);

  String? get address1 => getField<String>('address_1');
  set address1(String? value) => setField<String>('address_1', value);

  String? get streetAddress => getField<String>('street_address');
  set streetAddress(String? value) => setField<String>('street_address', value);

  String? get buildingAddress => getField<String>('building_address');
  set buildingAddress(String? value) =>
      setField<String>('building_address', value);

  String? get villageTownship => getField<String>('village/township');
  set villageTownship(String? value) =>
      setField<String>('village/township', value);

  int? get postcode => getField<int>('postcode');
  set postcode(int? value) => setField<int>('postcode', value);

  String? get city => getField<String>('city');
  set city(String? value) => setField<String>('city', value);

  String? get state => getField<String>('state');
  set state(String? value) => setField<String>('state', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get country => getField<String>('country');
  set country(String? value) => setField<String>('country', value);

  String? get dayOfBirth => getField<String>('day_of_birth');
  set dayOfBirth(String? value) => setField<String>('day_of_birth', value);

  String? get lastActive => getField<String>('last_active');
  set lastActive(String? value) => setField<String>('last_active', value);

  String? get companyName => getField<String>('company_name');
  set companyName(String? value) => setField<String>('company_name', value);

  String? get companyCity => getField<String>('company_city');
  set companyCity(String? value) => setField<String>('company_city', value);

  String? get webLink => getField<String>('web_link');
  set webLink(String? value) => setField<String>('web_link', value);

  String? get companyPhoto => getField<String>('companyPhoto');
  set companyPhoto(String? value) => setField<String>('companyPhoto', value);
}
