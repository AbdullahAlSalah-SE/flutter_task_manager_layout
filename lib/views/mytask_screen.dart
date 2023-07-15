part of '../imports/app_imports.dart';

class TasksScreen extends StatefulWidget {
  static const routename = '/mytask';

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

int? _sliding = 0;

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return WaveBackground(
      firstColor: AppColors.green_background_taskapp,
      secondColor: AppColors.bgWhite,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(AppLangKey.myTask.tr()),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DefaultTextStyle(
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppDime.lg,
                    color: AppColors.bgWhite),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.circular(AppDime.md)),
                      border: Border.all(
                        color: AppColors.green_grey,
                        width: AppDime.xs,
                      )),
                  child: CupertinoSlidingSegmentedControl(
                      backgroundColor: Colors.transparent,
                      thumbColor: AppColors.green_grey,
                      children: {
                        0: Container(
                          width: 80.0,
                          child: Text(AppLangKey.all.tr()),
                        ),
                        1: Container(
                          width: 80.0,
                          child: Text(AppLangKey.pending.tr()),
                        ),
                        2: Container(
                          width: 80.0,
                          child: Text(AppLangKey.ongoing.tr()),
                        ),
                        3: Container(
                          width: 80.0,
                          child: Text(AppLangKey.completed.tr()),
                        ),
                      },
                      groupValue: _sliding,
                      onValueChanged: (int? newvalue) {
                        setState(() {
                          _sliding = newvalue;
                        });
                      }),
                ),
              ),
              SizedBox(height: 16.0),
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return TaskItemWidget(
                      title: '${AppLangKey.task.tr()} ${index + 1}',
                      description:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add task creation logic here
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
