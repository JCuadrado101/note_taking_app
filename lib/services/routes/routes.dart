
import 'package:go_router/go_router.dart';
import 'package:note_taking_app/screens/app/app_screen.dart';
import 'package:note_taking_app/screens/authentication/authentication.dart';

List<GoRoute> mobileRoutes() {
  return [
    GoRoute(
      path: '/',
      builder: (context, state) => const Authentication(),
    ),
    GoRoute(
      name: 'home',
      path: '/home',
      pageBuilder: (context, state) => NoTransitionPage(
        key: state.pageKey,
        child: const AppScreen(),
      ),
    ),
  ];
}
