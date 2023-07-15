part of '../imports/app_imports.dart';

// class TaskManagerReportScreen extends StatelessWidget {

class TaskManagerReportScreen extends StatelessWidget {
  static const routename = '/TaskMana';

  @override
  Widget build(BuildContext context) {
    return WaveBackground(
      firstColor: AppColors.green_background_taskapp,
      secondColor: AppColors.bgWhite,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(AppLangKey.report.tr()),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLangKey.task_manager_report.tr(),
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16.0),
                Card(
                  elevation: 2.0,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              AppLangKey.totalTasks.tr(),
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '10',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              AppLangKey.completedTasks.tr(),
                              style: TextStyle(fontSize: 18.0),
                            ),
                            Text(
                              '7',
                              style: TextStyle(fontSize: 18.0),
                            ),
                          ],
                        ),
                        SizedBox(height: 8.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              AppLangKey.pendingTasks.tr(),
                              style: TextStyle(fontSize: 18.0),
                            ),
                            Text(
                              '3',
                              style: TextStyle(fontSize: 18.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 24.0),
                Text(
                  '${AppLangKey.taskCompletionRate.tr()}:',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16.0),
                CircularPercentIndicator(
                  arcBackgroundColor: AppColors.green_background_taskapp,
                  arcType: ArcType.FULL_REVERSED,
                  backgroundColor: AppColors.green_secondry_color,
                  // fillColor: AppColors.green_secondry_color,
                  progressColor: AppColors.green_secondry_color,
                  radius: MediaQuery.of(context).size.width / 2.3,
                  lineWidth: 10.0,
                  percent: 0.7, // Replace with actual completion rate
                  center: Text(
                    '70%',
                    style: TextStyle(
                      fontSize: 36.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // progressColor: Colors.blue,
                  animation: true,
                  animationDuration: 1000,
                ),
                SizedBox(height: 32.0),
                Text(
                  '${AppLangKey.recentTasks.tr()}:',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16.0),
                TasksItemWidget(
                  title: '${AppLangKey.task.tr()} 1',
                  date: 'June 1, 2023',
                ),
                TasksItemWidget(
                  title: '${AppLangKey.task.tr()}  2',
                  date: 'June 5, 2023',
                ),
                TasksItemWidget(
                  title: '${AppLangKey.task.tr()}  3',
                  date: 'June 10, 2023',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TasksItemWidget extends StatelessWidget {
  final String title;
  final String date;

  const TasksItemWidget({
    required this.title,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 3.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text('Date: $date'),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {
          // Add task details navigation logic here
        },
      ),
    );
  }
}
