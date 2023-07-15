part of '../../imports/app_imports.dart';

class Home_custom_card extends StatelessWidget {
  Home_custom_card(
      {super.key, required this.task_num, required this.task_text});

  final int task_num;
  final String task_text;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      shadowColor: Colors.transparent,
      elevation: 0,
      child: Container(
        width: 100,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '$task_num',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: AppDime.xlg_50,
                  color: AppColors.green_secondry_color),
            ),
            Text(
              textAlign: TextAlign.start,
              '$task_text',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: AppDime.lg,
                  color: AppColors.bgWhite),
            )
          ],
        ),
      ),
    );
  }
}
