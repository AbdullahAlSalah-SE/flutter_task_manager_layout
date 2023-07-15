part of '../../imports/app_imports.dart';

class AppSvg {
  static double xlg = (AppDime.xlg / AppDime.one_25); // 25
  static double xxlg = (AppDime.xxlg / AppDime.one_25); // 25

  static SvgPicture myApp = SvgPicture.asset(
    AppIcons.myApp,
    width: xlg.w,
    height: xlg.w,
  );
  static final SvgPicture light_theme = SvgPicture.asset(
    AppIcons.theme_light,
    width: xlg.w,
    height: xlg.w,
  );
  static final SvgPicture dark_theme = SvgPicture.asset(
    AppIcons.theme_dark,
    width: xlg.w,
    height: xlg.w,
  );
  static final SvgPicture rateus = SvgPicture.asset(
    AppIcons.rateus,
    width: xlg.w,
    height: xlg.w,
  );
  static final SvgPicture clock = SvgPicture.asset(
    AppIcons.clock,
    width: xlg.w,
    height: xlg.w,
  );

  static final SvgPicture tools = SvgPicture.asset(
    AppIcons.tools,
    width: xlg.w,
    height: xlg.h,
  );
  static final SvgPicture password = SvgPicture.asset(
    AppIcons.password,
    width: xlg.w,
    height: xlg.w,
  );
  static final SvgPicture terms = SvgPicture.asset(
    AppIcons.terms,
    width: xlg.w,
    height: xlg.w,
  );
  static final SvgPicture translate = SvgPicture.asset(
    AppIcons.translate,
    width: xlg.w,
    height: xlg.w,
  );

  static final SvgPicture vector = SvgPicture.asset(
    AppIcons.vector,
    width: xlg.w,
    height: xlg.w,
  );

  static final SvgPicture profile = SvgPicture.asset(
    AppIcons.profile,
    width: xlg.w,
    height: xlg.w,
  );
  static final SvgPicture statics = SvgPicture.asset(
    AppIcons.statics,
    width: xlg.w,
    height: xlg.w,
  );
  static final SvgPicture my_ticket = SvgPicture.asset(
    AppIcons.my_ticket,
    width: xlg.w,
    height: xlg.w,
  );
  static final SvgPicture my_task = SvgPicture.asset(
    AppIcons.my_task,
    width: xlg.w,
    height: xlg.w,
  );

  // TODO : logout icon
}
