part of '../../imports/app_imports.dart';

class AppThemeChoose {
  static String? enFont = GoogleFonts.notoKufiArabic().fontFamily;
  static String? arFont = GoogleFonts.notoKufiArabic().fontFamily;

  // * check lang
  // static String? fontFamily(BuildContext context) =>
  // AppLang.isAr(context) ? arFont : enFont;

  //* light
  static ThemeData lightTheme(BuildContext context) {
    // String? fontApp = fontFamily(context);
    return ThemeData.light().copyWith(
        //* appbar
        // colorScheme: ThemeData().colorScheme.copyWith(
        //       primary: AppColors.bgGreen,
        //       onPrimary: AppColors.bgGreen,
        //       secondary: AppColors.bgGreen,
        //       onSecondary: AppColors.bgWhite,
        //     ),

        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.green_background_taskapp,
          foregroundColor: AppColors.bgWhite,
          centerTitle: true,
          titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle?.apply(
                color: AppColors.bgBlack,
                fontFamily: AppLang.isAr(context) ? arFont : enFont,
              ),

          // GoogleFonts.alike(
          //   textStyle: Theme.of(context).textTheme.displayMedium,
          //   fontStyle: GoogleFonts.notoKufiArabic().fontStyle,
          //   color: AppColors.bgWhite,
          //   fontSize: AppDime.xlg,
          // ),
          elevation: 10,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            onPrimary: AppColors.bgWhite,
            primary: AppColors.green_background_taskapp,
          ),
        ),
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: AppColors.bgBlack,
              displayColor: AppColors.bgBlack,
              fontFamily: AppLang.isAr(context) ? arFont : enFont,
              // fontFamily: GoogleFonts.pacifico().fontFamily,
              // fontFamily: fontApp,
            ),
        tabBarTheme: Theme.of(context)
            .tabBarTheme
            .copyWith(labelColor: AppColors.bgWhite));
  }

  //* dark
  static ThemeData darkTheme(BuildContext context) {
    // String? fontApp = fontFamily(context);
    return ThemeData.dark().copyWith(
      primaryColor: AppColors.quran_gold,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          onPrimary: AppColors.bgWhite,
          primary: AppColors.bgGold,
        ),
      ),
      sliderTheme: SliderThemeData(
        activeTrackColor: AppColors.quran_gold,
        thumbColor: AppColors.quran_gold,
        inactiveTrackColor: AppColors.bgCursor,
      ),
      //* appbar
      appBarTheme: AppBarTheme(
        iconTheme:
            Theme.of(context).iconTheme.copyWith(color: AppColors.bgBlack),
        backgroundColor: AppColors.bgWhite,
        // foregroundColor: AppColors.bgWhite,
        centerTitle: true,
        titleTextStyle: GoogleFonts.alike(
            textStyle: Theme.of(context).textTheme.displayMedium,
            color: AppColors.bgBlack,
            fontSize: AppDime.xlg,
            fontWeight: FontWeight.bold),
        elevation: 10,
      ),
      textTheme: Theme.of(context).textTheme.apply(
            bodyColor: AppColors.bgWhite,
            displayColor: AppColors.bgWhite,
            fontFamily: AppLang.isAr(context) ? arFont : enFont,

            // fontFamily: GoogleFonts.pacifico().fontFamily,
            // fontFamily: fontApp,
          ),
    );
  }
}
