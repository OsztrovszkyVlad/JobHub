import '../database.dart';

class StudentTable extends SupabaseTable<StudentRow> {
  @override
  String get tableName => 'student';

  @override
  StudentRow createRow(Map<String, dynamic> data) => StudentRow(data);
}

class StudentRow extends SupabaseDataRow {
  StudentRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StudentTable();

  String get fullName => getField<String>('FullName')!;
  set fullName(String value) => setField<String>('FullName', value);

  String get email => getField<String>('Email')!;
  set email(String value) => setField<String>('Email', value);

  String get password => getField<String>('Password')!;
  set password(String value) => setField<String>('Password', value);

  String get cityOfResidence => getField<String>('CityOfResidence')!;
  set cityOfResidence(String value) =>
      setField<String>('CityOfResidence', value);

  String get dateOfBirth => getField<String>('DateOfBirth')!;
  set dateOfBirth(String value) => setField<String>('DateOfBirth', value);

  String get idStudent => getField<String>('IdStudent')!;
  set idStudent(String value) => setField<String>('IdStudent', value);

  String? get university => getField<String>('University');
  set university(String? value) => setField<String>('University', value);
}
