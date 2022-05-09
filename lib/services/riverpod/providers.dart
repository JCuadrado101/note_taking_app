import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginNotifier extends StateNotifier<String?> {
  LoginNotifier() : super(FirebaseAuth.instance.currentUser?.uid);

  @override
  String? get state => super.state;

}

final loginProvider = StateNotifierProvider((ref) {
  return LoginNotifier();
});

