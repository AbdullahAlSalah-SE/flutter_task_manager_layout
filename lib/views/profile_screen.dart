part of '../imports/app_imports.dart';

class Profile_screen extends StatelessWidget {
  const Profile_screen({super.key});
  static const routename = '/profile';

  @override
  Widget build(BuildContext context) {
    return WaveBackground(
        firstColor: AppColors.green_background_taskapp,
        secondColor: AppColors.bgWhite,
        child: WaveBackground(
          firstColor: AppColors.green_background_taskapp,
          secondColor: AppColors.bgWhite,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              foregroundColor: AppColors.bgWhite,
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              elevation: 0,
              title: Text(
                AppLangKey.myprof.tr(),
                // style: TextStyle(color: Colors.amber),
              ),
              actions: [
                Icon(Icons.notifications),
                SizedBox(
                  width: 10,
                )
              ],
            ),
            body: SingleChildScrollView(
                child: Padding(
              padding: EdgeInsets.all(AppDime.lg),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: AppDime.xxlg,
                  ),
                  Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: <Widget>[
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          // side: BorderSide(width: 5, color: Colors.green)
                        ),
                        child: Container(
                          height: 150,
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Abdullah  AlSalah',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: AppDime.xlg),
                              ),
                              Text(
                                '0799473793',
                                style: TextStyle(
                                    // fontWeight: FontWeight.bold,
                                    fontSize: AppDime.lg),
                              ),
                              Text(
                                'HR DEPRTMAENT',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: AppDime.lg_2,
                                    color: AppColors.green_secondry_color),
                              )
                            ],
                          ),
                        ),
                      ),
                      FractionalTranslation(
                          translation: Offset(0.0, -0.7),
                          child: Align(
                            child: CircleAvatar(
                              backgroundColor: Colors.amber,
                              maxRadius: 50,
                            ),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        AppLangKey.general.tr(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: AppDime.xlg),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Switch_tile_list(),
                      Custome_listtilel(
                        nav_path: ChangePasswordScreen.routename,
                        title: AppLangKey.changePassword.tr(),
                        colorvalue: AppColors.pass_back,
                        svg_path: AppSvg.password,
                      ),
                      Custome_listtilel(
                        nav_path: PrivacyPolicyScreen.routename,
                        title: AppLangKey.privacyPolicy.tr(),
                        colorvalue: AppColors.pp_back,
                        svg_path: AppSvg.vector,
                      ),
                      Custome_listtilel(
                        nav_path: TermsAndConditionsScreen.routename,
                        title: AppLangKey.termsConditions.tr(),
                        colorvalue: AppColors.terms_back,
                        svg_path: AppSvg.terms,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                      child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: AppColors.green_secondry_color,
                        ),
                        onPressed: () {},
                        child: Text(
                          AppLangKey.logout.tr(),
                          style: TextStyle(
                              color: AppColors.bgBlack,
                              fontWeight: FontWeight.bold,
                              fontSize: AppDime.lg),
                        )),
                  )),
                ],
              ),
            )),
          ),
        ));
  }
}
