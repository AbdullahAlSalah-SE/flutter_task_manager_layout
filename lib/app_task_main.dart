part of './imports/app_imports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await localized.EasyLocalization.ensureInitialized();

  runApp(localized.EasyLocalization(
      supportedLocales: AppLangConfig.supportLocale,
      path: AppLangConfig.langpath,
      startLocale: Locale(ken),
      fallbackLocale: Locale(
        ken,
      ),
      child: Task_mainapp()));
  // FlutterNativeSplash.remove();
}

class Task_mainapp extends StatelessWidget {
  const Task_mainapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (context, child) {
          return MaterialApp(
            title: AppLangKey.appname,
            debugShowCheckedModeBanner: false,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            theme: AppThemeChoose.lightTheme(context),
            darkTheme: AppThemeChoose.darkTheme(context),
            // themeMode: ThemeMode.dark,
            // themeMode: manageTheme.themeMode,
            //* root (/)
            initialRoute: Home_screen.routename,
            routes: AppRoutes.route,
          );
        });
  }
}
