import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        home: sign_up_screen(),
        );
      }
    );
  }
}
