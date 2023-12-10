import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://yjlshgfuenuumhoewiza.supabase.co/';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InlqbHNoZ2Z1ZW51dW1ob2V3aXphIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDIxMDgxNjEsImV4cCI6MjAxNzY4NDE2MX0.rZuj39IB1MCik2dtbLSRc-qHRM390wt6rVVqE11bGJo';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
