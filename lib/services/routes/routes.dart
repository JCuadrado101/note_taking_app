import 'package:go_router/go_router.dart';
import 'package:note_taking_app/screens/app/app_screen.dart';
import 'package:note_taking_app/screens/authentication/authentication.dart';
import 'package:note_taking_app/screens/authentication/signup/signup.dart';

List<GoRoute> mobileRoutes() {
  return [
    GoRoute(
      path: '/login',
      builder: (context, state) => const Authentication(),
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => const AppScreen(),
    ),
    GoRoute(
      path: '/signup',
      builder: (context, state) => const SignUp(),
    ),
  ];
}
