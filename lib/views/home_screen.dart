part of '../imports/app_imports.dart';

class Home_screen extends StatelessWidget {
  const Home_screen({super.key});

  static const routename = '/H';

  @override
  Widget build(BuildContext context) {
    final now = new DateTime.now();
    // String formatter = DateFormat('yMd').format(now);
    String formatter_ar = DateFormat.yMMMEd('ar_SA').format(now);
    String formatter = DateFormat('yMMMEd').format(now);

    return WaveBackground(
      firstColor: AppColors.green_background_taskapp,
      secondColor: AppColors.bgWhite,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: AppDime.md),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: AppDime.xxlg,
              ),
              ListTile(
                title: Text(
                  AppLangKey.hello.tr(),
                  style: TextStyle(
                      color: AppColors.bgWhite,
                      fontWeight: FontWeight.bold,
                      fontSize: AppDime.xlg),
                ),
                subtitle: Text(
                  '${AppLang.isAr(context) ? formatter_ar : formatter}',
                  style: TextStyle(
                      color: AppColors.green_secondry_color,
                      fontWeight: FontWeight.bold,
                      fontSize: AppDime.lg),
                ),
                trailing: Icon(
                  Icons.notifications,
                  color: AppColors.bgWhite,
                ),
              ),
              IntrinsicHeight(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Home_custom_card(
                    task_num: 08,
                    task_text: AppLangKey.tasksPending.tr(),
                  ),
                  VerticalDivider(
                    color: AppColors.green_secondry_color,
                    thickness: 1,
                    indent: AppDime.xlg_50,
                    endIndent: AppDime.xlg_50,
                  ),
                  Home_custom_card(
                    task_num: 15,
                    task_text: AppLangKey.tasksProcess.tr(),
                  ),
                  VerticalDivider(
                    color: AppColors.green_secondry_color,
                    width: 12,
                    indent: AppDime.xlg_50,
                    endIndent: AppDime.xlg_50,
                    thickness: 1,
                  ),
                  Home_custom_card(
                    task_num: 29,
                    task_text: AppLangKey.tasksnCompleted.tr(),
                  )
                ],
              )),
              SizedBox(
                height: AppDime.xlg,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Home_screens_card(
                            nav_path: TasksScreen.routename,
                            svg_child: AppSvg.my_task,
                            back_color: AppColors.mytask_back_pink,
                            tilte: AppLangKey.myTask.tr(),
                            sub_title: '34 new task added',
                          )),
                      Expanded(
                          flex: 1,
                          child: Home_screens_card(
                            nav_path: Myticket_screen.routename,
                            svg_child: AppSvg.my_ticket,
                            back_color: AppColors.myticket_back_pink,
                            tilte: AppLangKey.myTicket.tr(),
                            sub_title: 'You have 400 Ticket',
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Home_screens_card(
                            nav_path: TaskManagerReportScreen.routename,
                            svg_child: AppSvg.statics,
                            back_color: AppColors.sstatics_back_pink,
                            tilte: AppLangKey.report.tr(),
                            sub_title: 'See all your report',
                          )),
                      Expanded(
                          flex: 1,
                          child: Home_screens_card(
                            nav_path: Profile_screen.routename,
                            back_color: AppColors.person_back_pink,
                            svg_child: AppSvg.profile,
                            tilte: AppLangKey.myprof.tr(),
                            sub_title: 'Saad Ibn Sayeed',
                          ))
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: AppColors.green_secondry_color,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(
                          context, Create_ticket_screen.routename);
                    },
                    child: Text(
                      'CREAT TICKET',
                      style: TextStyle(
                          color: AppColors.bgBlack,
                          fontWeight: FontWeight.bold,
                          fontSize: AppDime.lg),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
