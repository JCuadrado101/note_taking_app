import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:note_taking_app/services/instances/firebase.dart';
import 'package:note_taking_app/services/routes/routes.dart';
import 'initializer/setup.dart';
import 'package:go_router/go_router.dart';


void main() async {
  await initializerSetup();
  FirebaseService();
  runApp(const ProviderScope(child: MyApp())
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final GoRouter _router = GoRouter(
        debugLogDiagnostics: false,
        initialLocation: '/',
        routes: [...mobileRoutes()],
        refreshListenable: GoRouterRefreshStream(FirebaseAuth.instance.authStateChanges()),
        redirect: (state) {
          final loggedIn = FirebaseAuth.instance.currentUser?.uid != null;
          final authPage = state.subloc == '/';
          if (!loggedIn && authPage) {
            return '/login';
          }
          if (loggedIn && state.subloc == "/login") {
            return '/';
          }
        }
    );
    return MaterialApp.router(
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
