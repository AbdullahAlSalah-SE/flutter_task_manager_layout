part of '../../imports/app_imports.dart';

class TaskItemWidget extends StatelessWidget {
  final String title;
  final String description;

  const TaskItemWidget({
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Stack(
        // alignment: Alignment.centerLeft,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 16.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(AppDime.lg),
              boxShadow: [
                BoxShadow(
                  color: AppColors.green_background_taskapp.withOpacity(0.3),
                  blurRadius: 3.0,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  AppIcons.tools,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('data'),
                              ],
                            ),
                            Row(
                              children: [
                                AppSvg.clock,
                                SizedBox(
                                  width: 10,
                                ),
                                Text('Tomorrow – 12:45 pm')
                              ],
                            )
                          ],
                        ),
                        Center(
                          child: Container(
                            height: 60,
                            width: 50,
                            child: CircularPercentIndicator(
                              arcBackgroundColor:
                                  AppColors.green_background_taskapp,
                              arcType: ArcType.FULL_REVERSED,
                              backgroundColor: AppColors.green_secondry_color,
                              // fillColor: AppColors.green_secondry_color,
                              progressColor: AppColors.green_secondry_color,
                              radius: 30,
                              lineWidth: 10.0,
                              percent:
                                  0.7, // Replace with actual completion rate
                              center: Text(
                                '70%',
                                style: TextStyle(
                                  fontSize: AppDime.lg,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              // progressColor: Colors.blue,
                              animation: true,
                              animationDuration: 1000,
                            ),
                          ),
                        )
                      ],
                    ),
                    Text(
                      // title,
                      '$title',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/profile_1.png'),
                    Column(
                      children: [
                        Text(
                          'Saad Ibn Sayeed',
                          style: TextStyle(
                              fontSize: AppDime.md_14,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Marketing Department',
                          style: TextStyle(fontSize: AppDime.md_12),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          FractionalTranslation(
              translation:
                  AppLang.isAr(context) ? Offset(0.5, 0.0) : Offset(-0.5, 0.0),
              child: Align(
                  child: VerticalDivider(
                indent: AppDime.xlg_50,
                endIndent: AppDime.xlg_50,
                thickness: AppDime.md,
                width: 50,
                color: Colors.amber,
              ))),
        ],
      ),
    );
  }
}
