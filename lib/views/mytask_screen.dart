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
        body: SingleChildScrollView(
          child: Container(
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
                SizedBox(height: AppDime.xlg),
                CarouselSlider.builder(
                  options: CarouselOptions(
                    viewportFraction: 0.27,
                    pageSnapping: false,
                    enableInfiniteScroll: false,
                    scrollDirection: Axis.vertical,
                    height: MediaQuery.of(context).size.height.h,
                    padEnds: false,
                  ),
                  itemCount:
                      AppLists.list_of_lists[_sliding ?? 0]['List'].length,
                  itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) =>
                      Container(
                          child: TaskItemWidget(
                    title: AppLists.list_of_lists[_sliding ?? 0]['List']
                            [pageViewIndex]['title'] ??
                        "j",
                    description: AppLists.list_of_lists[_sliding ?? 0]['List']
                            [pageViewIndex]['desc'] ??
                        "f",
                  )),

                  //  Text('${Applists.list_of_lists[1]['list'].length}'),
                ),
                SizedBox(
                  height: AppDime.lg,
                ),
                // Expanded(
                //   child: ListView.builder(
                //     itemCount: 5,
                //     itemBuilder: (context, index) {
                //       return TaskItemWidget(
                //         title: '${AppLangKey.task.tr()} ${index + 1}',
                //         description:
                //             'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                //       );
                //     },
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
