import '../database.dart';

class CompanyTable extends SupabaseTable<CompanyRow> {
  @override
  String get tableName => 'company';

  @override
  CompanyRow createRow(Map<String, dynamic> data) => CompanyRow(data);
}

class CompanyRow extends SupabaseDataRow {
  CompanyRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CompanyTable();

  double get urc => getField<double>('urc')!;
  set urc(double value) => setField<double>('urc', value);

  double get tron => getField<double>('Tron')!;
  set tron(double value) => setField<double>('Tron', value);

  String get name => getField<String>('Name')!;
  set name(String value) => setField<String>('Name', value);

  String get password => getField<String>('Password')!;
  set password(String value) => setField<String>('Password', value);

  String get email => getField<String>('Email')!;
  set email(String value) => setField<String>('Email', value);

  String get locatie => getField<String>('Locatie')!;
  set locatie(String value) => setField<String>('Locatie', value);
}
