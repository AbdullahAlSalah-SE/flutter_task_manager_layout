part of '../../imports/app_imports.dart';

class Home_screens_card extends StatelessWidget {
  const Home_screens_card(
      {super.key,
      required this.tilte,
      required this.sub_title,
      required this.svg_child,
      required this.back_color,
      required this.nav_path});

  final String tilte;
  final String sub_title;
  final SvgPicture svg_child;
  final Color back_color;
  final String nav_path;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '$nav_path');
      },
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          // side: BorderSide(width: 5, color: Colors.green)
        ),
        child: Container(
          // color: AppColors.bgWhite,
          padding: EdgeInsets.all(AppDime.lg),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: back_color,
                    borderRadius:
                        BorderRadius.all(Radius.circular(AppDime.md))),
                padding: EdgeInsets.all(AppDime.md),
                child: svg_child,
              ),
              ListTile(
                title: Text('$tilte'),
                subtitle: Text(
                  '$sub_title',
                  style: TextStyle(fontSize: AppDime.md_12),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
