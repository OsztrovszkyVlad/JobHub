import '../database.dart';

class AplicareTable extends SupabaseTable<AplicareRow> {
  @override
  String get tableName => 'aplicare';

  @override
  AplicareRow createRow(Map<String, dynamic> data) => AplicareRow(data);
}

class AplicareRow extends SupabaseDataRow {
  AplicareRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AplicareTable();

  int get idAplicare => getField<int>('IdAplicare')!;
  set idAplicare(int value) => setField<int>('IdAplicare', value);

  int get idAnunt => getField<int>('IdAnunt')!;
  set idAnunt(int value) => setField<int>('IdAnunt', value);

  String? get idStudent => getField<String>('IdStudent');
  set idStudent(String? value) => setField<String>('IdStudent', value);

  double? get urc => getField<double>('urc');
  set urc(double? value) => setField<double>('urc', value);
}
