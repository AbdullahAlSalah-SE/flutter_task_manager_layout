// part of '../../imports/app_imports.dart';

// class Switch_tile_list extends StatelessWidget {
//   const Switch_tile_list({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // * Provider Theme
//     // final ManageTheme manageTheme = Provider.of<ManageTheme>(context);

//     // return Switch(
//     //   value: true,
//     //   onChanged: manageTheme.updateTheme,
//     // );
//     return Container();
//   }
// }

part of '../../imports/app_imports.dart';

class Switch_tile_list extends StatefulWidget {
  Switch_tile_list({
    Key? key,
  }) : super(key: key);

  @override
  State<Switch_tile_list> createState() => _Switch_tile_listState();
}

class _Switch_tile_listState extends State<Switch_tile_list> {
  bool choose = false;
  String? value_s;
  // final List<String> _itemLang = [ken, kar];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration.zero, () {
      value_s = AppLang.currentLang(context);
      setState(() {});

      choose = AppLang.isAr(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: AppDime.base,
        child: Padding(
          padding: EdgeInsets.all(AppDime.md),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 0,
                      child: Container(
                        width: 35,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: AppColors.lang_back,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        height: 35,
                        child: AppSvg.translate,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(
                        AppLangKey.languageSetup.tr(),
                        style: TextStyle(fontSize: AppDime.lg),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  child: Row(
                children: [
                  Text('EN'),
                  Switch(
                    value: choose,
                    onChanged: changeLang,
                    activeColor: AppColors.green_secondry_color,
                    activeTrackColor: AppColors.green_secondry_color,
                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                      (states) => AppColors.green_secondry_color,
                    ),
                    thumbColor: MaterialStateProperty.resolveWith<Color?>(
                      (states) => AppColors.green_secondry_color,
                    ),
                    trackOutlineColor:
                        MaterialStateProperty.resolveWith<Color?>(
                      (states) => AppColors.green_secondry_color,
                    ),
                    //     Container(
                    //   child: Text(AppLang.isAr(context) ? 'AR' : 'EN'),
                    // )
                  ),
                  Text('AR'),
                ],
              ))
            ],
          ),
        ));

    // DropdownButton(
    //   value: value,
    //   items: _itemLang
    //       .map((item) => DropdownMenuItem<String>(
    //           value: item,
    //           child: Text(
    //             item,
    //             style: TextStyle(fontWeight: FontWeight.bold),
    //           )))
    //       .toList(),
    //   onChanged: changeLang,
    // ),
  }

  // * change lang
  changeLang(bool value) {
    if (this.value_s != AppLang.current_lang(context)) {
      AppLang.setlang(
          context,
          choose
              ? AppLang.currentLangLocale(context, 'en')
              : AppLang.currentLangLocale(context, 'ar'));
      setState(() {
        this.value_s = AppLang.current_lang(context);
        choose = !choose;
      });

      // App_Restart.reBuild(context);
    } else if (this.value_s == AppLang.current_lang(context)) {
      AppLang.setlang(
          context,
          choose
              ? AppLang.currentLangLocale(context, 'en')
              : AppLang.currentLangLocale(context, 'ar'));
      setState(() {
        this.value_s = AppLang.current_lang(context);
        choose = !choose;
      });

      // App_Restart.reBuild(context);
    }
  }
}
