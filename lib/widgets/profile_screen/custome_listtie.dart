part of '../../imports/app_imports.dart';

class Custome_listtilel extends StatelessWidget {
  const Custome_listtilel(
      {super.key,
      required this.title,
      required this.colorvalue,
      required this.svg_path,
      required this.nav_path});

  final String title;
  final SvgPicture svg_path;
  final Color colorvalue;
  final String nav_path;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: AppDime.base,
      child: ListTile(
        onTap: () {
          Navigator.pushNamed(context, '$nav_path');
        },
        title: Text('$title'),
        leading: Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
              color: colorvalue,
              borderRadius: BorderRadius.all(Radius.circular(5))),
          padding: EdgeInsets.all(5),
          child: svg_path,
        ),
        trailing: Icon(
          Icons.arrow_forward_ios_sharp,
          size: AppDime.lg,
        ),
      ),
    );
  }
}
