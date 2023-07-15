part of '../imports/app_imports.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  static const routename = '/Privacy';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy Policy'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Privacy Policy',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sagittis turpis ut sollicitudin laoreet. Nunc semper odio nec dui rutrum, a gravida mi dignissim. Proin maximus convallis orci, vel efficitur dolor eleifend id. Aenean non enim lacus. Sed eu mauris nec risus efficitur interdum id sit amet erat. Vestibulum laoreet ante ut erat dignissim, et fermentum nisl dignissim. Curabitur viverra tempor enim, nec pulvinar urna condimentum ac. Vivamus malesuada nunc nec lectus viverra convallis. Phasellus ac sapien tortor.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Information Collection and Use',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sagittis turpis ut sollicitudin laoreet. Nunc semper odio nec dui rutrum, a gravida mi dignissim.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Data Security',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sagittis turpis ut sollicitudin laoreet. Nunc semper odio nec dui rutrum, a gravida mi dignissim.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Changes to This Privacy Policy',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sagittis turpis ut sollicitudin laoreet. Nunc semper odio nec dui rutrum, a gravida mi dignissim.',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
