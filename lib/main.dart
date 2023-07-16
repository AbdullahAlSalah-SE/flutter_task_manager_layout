import 'package:flutter/material.dart';
import './imports/app_imports.dart';
import 'package:easy_localization/easy_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  runApp(EasyLocalization(
      supportedLocales: AppLangConfig.supportLocale,
      path: AppLangConfig.langpath,
      startLocale: Locale(ken),
      fallbackLocale: Locale(
        ken,
      ),
      child: App_Restart(child: const Task_mainapp())));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Splash_Page(),
      // initialRoute: Splash_Page.routename,
      initialRoute: Home_screen.routename,
      routes: AppRoutes.route,
    );
  }
}
