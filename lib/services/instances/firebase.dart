import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:note_taking_app/services/riverpod/providers.dart';
import '../../screens/widgets/auth_errors.dart';

class FirebaseService {
  static final FirebaseService instance = FirebaseService._internal();

  factory FirebaseService() {
    return instance;
  }
  FirebaseService._internal();

  Future<void> createUserWithEmailAndPassword(
      String emailAddress,
      String password,
      BuildContext context,
      ) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      authErrorSnackbar(
        context,
        'Account created successfully',
        const Icon(Icons.check_box, color: Colors.green),
      );
      await FirebaseAuth.instance.signOut();
      context.go('/login');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        authErrorSnackbar(
          context,
          'The password provided is too weak.',
          const Icon(Icons.warning, color: Colors.yellow),
        );
      } else if (e.code == 'email-already-in-use') {
        authErrorSnackbar(
          context,
          'The account already exists for that email.',
          const Icon(Icons.warning, color: Colors.yellow),
        );
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  Future<void> signInWithEmailAndPassword(
      String emailAddress,
      String password,
      WidgetRef ref,
      BuildContext context,
      ) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailAddress,
          password: password
      );
      ref
          .read(loginProvider.notifier)
          .state = credential.user?.uid;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        authErrorSnackbar(
          context,
          'User not found',
          const Icon(Icons.error, color: Colors.red),
        );
      } else if (e.code == 'wrong-password') {
        authErrorSnackbar(
          context,
          'Wrong Password',
          const Icon(Icons.warning, color: Colors.yellow),
        );
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  Future<void> sendPasswordResetEmail(
      String emailAddress,
      BuildContext context,
      ) async {
    try {
     await FirebaseAuth.instance.sendPasswordResetEmail(
          email: emailAddress
      );
       authErrorSnackbar(
         context,
         'Password reset email sent',
         const Icon(Icons.check_box, color: Colors.green),
       );
    } on FirebaseAuthException catch (e) {
      authErrorSnackbar(
        context,
        e.code,
        const Icon(Icons.warning, color: Colors.yellow),
      );
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}
