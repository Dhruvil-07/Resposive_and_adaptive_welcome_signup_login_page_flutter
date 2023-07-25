import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:welcome_login_signup_page_flutter/custom_transaction.dart';
import 'package:welcome_login_signup_page_flutter/layout_builder/login_using_lb.dart';
import 'package:welcome_login_signup_page_flutter/layout_builder/sign_up_using_lb.dart';
import 'package:welcome_login_signup_page_flutter/layout_builder/welcome_using_lb.dart';
import 'package:welcome_login_signup_page_flutter/screens/login_screen/login_screen.dart';
import 'package:welcome_login_signup_page_flutter/screens/sign_up_screen/sign_up_screen.dart';
import 'package:welcome_login_signup_page_flutter/screens/welcome_screen/welcome_screen.dart';

void main()
{
   runApp(my_responsive_design());
}


class my_responsive_design extends StatelessWidget {
  const my_responsive_design({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder:(context, child) {
        return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        home: welcome_screen_lb(),
        routes:
          {
              '/login' : (context) => login_screen_lb(),
              '/signup' : (context) => login_screen_lb(),
          },
        );
      }
    );
  }
}



