part of '../imports/app_imports.dart';

class ChangePasswordScreen extends StatelessWidget {
  static const routename = '/ChangePass';

  @override
  Widget build(BuildContext context) {
    return WaveBackground(
      firstColor: AppColors.green_background_taskapp,
      secondColor: AppColors.bgWhite,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Change Password'),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Change Password',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Current Password',
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'New Password',
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirm New Password',
                ),
              ),
              SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: () {
                  // Add password change logic here
                },
                child: Text('Change Password'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
