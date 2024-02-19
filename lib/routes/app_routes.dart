import 'package:flutter/material.dart';
import 'package:akanksha_s_application1/presentation/front_screen/front_screen.dart';
import 'package:akanksha_s_application1/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:akanksha_s_application1/presentation/sign_in_tab_container_screen/sign_in_tab_container_screen.dart';
import 'package:akanksha_s_application1/presentation/phone_verify_screen/phone_verify_screen.dart';
import 'package:akanksha_s_application1/presentation/home_page_screen/home_page_screen.dart';
import 'package:akanksha_s_application1/presentation/on_screen/on_screen.dart';
import 'package:akanksha_s_application1/presentation/nvigation_screen/nvigation_screen.dart';
import 'package:akanksha_s_application1/presentation/plan_trip_screen/plan_trip_screen.dart';
import 'package:akanksha_s_application1/presentation/destiny_screen/destiny_screen.dart';
import 'package:akanksha_s_application1/presentation/bill_screen/bill_screen.dart';
import 'package:akanksha_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String frontScreen = '/front_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String signInPage = '/sign_in_page';

  static const String signInTabContainerScreen =
      '/sign_in_tab_container_screen';

  static const String phoneVerifyScreen = '/phone_verify_screen';

  static const String homePageScreen = '/home_page_screen';

  static const String onScreen = '/on_screen';

  static const String nvigationScreen = '/nvigation_screen';

  static const String planTripScreen = '/plan_trip_screen';

  static const String destinyScreen = '/destiny_screen';

  static const String billScreen = '/bill_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    frontScreen: (context) => FrontScreen(),
    signUpScreen: (context) => SignUpScreen(),
    signInTabContainerScreen: (context) => SignInTabContainerScreen(),
    phoneVerifyScreen: (context) => PhoneVerifyScreen(),
    homePageScreen: (context) => HomePageScreen(),
    onScreen: (context) => OnScreen(),
    nvigationScreen: (context) => NvigationScreen(),
    planTripScreen: (context) => PlanTripScreen(),
    destinyScreen: (context) => DestinyScreen(),
    billScreen: (context) => BillScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
