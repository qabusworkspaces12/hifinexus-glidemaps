import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://hgzlyghbthvoagctuwdl.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhnemx5Z2hidGh2b2FnY3R1d2RsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDU0NTg1MjQsImV4cCI6MjAyMTAzNDUyNH0.LuCOjLfeo8D4Gj7cOrIDMZONfBxw-nb4DaZi1V9YQhc';

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
