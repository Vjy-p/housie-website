import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:housie_tambola/router/app_router.dart';
import 'package:housie_tambola/utils/theme/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GoogleFonts.pendingFonts([GoogleFonts.radleyTextTheme]);
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
