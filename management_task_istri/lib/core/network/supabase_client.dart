import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseClientWrapper {
  final SupabaseClient client;

  SupabaseClientWrapper(this.client);

  bool get isAuthenticated => client.auth.currentSession != null;

  String? get currentUserId => client.auth.currentUser?.id;
}
