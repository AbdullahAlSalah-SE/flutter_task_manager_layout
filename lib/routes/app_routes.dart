part of '../../imports/app_imports.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> route = {
    Home_screen.routename: (context) => Home_screen(),
    Login_screen.routename: (context) => Login_screen(),
    TasksScreen.routename: (context) => TasksScreen(),
    Create_ticket_screen.routename: (context) => Create_ticket_screen(),
    Myticket_screen.routename: (context) => Myticket_screen(),
    Profile_screen.routename: (context) => Profile_screen(),
    PrivacyPolicyScreen.routename: (context) => PrivacyPolicyScreen(),
    TermsAndConditionsScreen.routename: (context) => TermsAndConditionsScreen(),
    ChangePasswordScreen.routename: (context) => ChangePasswordScreen(),
    TaskManagerReportScreen.routename: (context) => TaskManagerReportScreen(),
  };
}
