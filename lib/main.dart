import 'package:flutter/material.dart';
import 'package:housie_tambola/router/app_router.dart';
import 'package:housie_tambola/theme/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Housie Tambola',
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      theme: AppTheme.dark,
    );
  }
}
