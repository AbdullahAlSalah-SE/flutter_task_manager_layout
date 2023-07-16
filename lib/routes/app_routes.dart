part of '../../imports/app_imports.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> route = {
    Login_screen.routename: (context) => Login_screen(),
    Home_screen.routename: (context) => Home_screen(),
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
