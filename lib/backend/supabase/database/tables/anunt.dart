import '../database.dart';

class AnuntTable extends SupabaseTable<AnuntRow> {
  @override
  String get tableName => 'anunt';

  @override
  AnuntRow createRow(Map<String, dynamic> data) => AnuntRow(data);
}

class AnuntRow extends SupabaseDataRow {
  AnuntRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AnuntTable();

  int get idAnunt => getField<int>('IdAnunt')!;
  set idAnunt(int value) => setField<int>('IdAnunt', value);

  double get urcCompanie => getField<double>('UrcCompanie')!;
  set urcCompanie(double value) => setField<double>('UrcCompanie', value);

  String get descriere => getField<String>('Descriere')!;
  set descriere(String value) => setField<String>('Descriere', value);

  String get imagine => getField<String>('Imagine')!;
  set imagine(String value) => setField<String>('Imagine', value);

  String get domeniu => getField<String>('Domeniu')!;
  set domeniu(String value) => setField<String>('Domeniu', value);

  String? get salariu => getField<String>('Salariu');
  set salariu(String? value) => setField<String>('Salariu', value);

  String get titlu => getField<String>('Titlu')!;
  set titlu(String value) => setField<String>('Titlu', value);

  String? get pozitie => getField<String>('Pozitie');
  set pozitie(String? value) => setField<String>('Pozitie', value);

  String? get program => getField<String>('Program');
  set program(String? value) => setField<String>('Program', value);
}
