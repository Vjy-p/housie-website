import 'package:go_router/go_router.dart';
import 'package:housie_tambola/screens/delete/delete_account_screen.dart';
import 'package:housie_tambola/screens/homepage/home_page.dart';
import 'package:housie_tambola/screens/privacy/privacy_policy_screen.dart';
import 'package:housie_tambola/screens/terms/terms_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => HomePage()),
    GoRoute(
      path: '/privacy',
      builder: (context, state) => const PrivacyPolicyScreen(),
    ),
    GoRoute(path: '/terms', builder: (context, state) => const TermsScreen()),
    GoRoute(
      path: '/delete',
      builder: (context, state) => const DeleteAccountScreen(),
    ),
    // GoRoute(path: '/contact', builder: (context, state) => const ContactPage()),
  ],
);
