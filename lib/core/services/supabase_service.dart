import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@lazySingleton
class SupabaseService {
  final SupabaseClient client;

  SupabaseService(this.client);

  SupabaseClient get supabase => client;

  User? get currentUser => client.auth.currentUser;

  Future<void> signOut() => client.auth.signOut();
}
