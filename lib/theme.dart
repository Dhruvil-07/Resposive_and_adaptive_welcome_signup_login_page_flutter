import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData light_theme_mode(BuildContext context)
{
   return ThemeData(
     brightness : Brightness.light,
     
     //elevate button theme
     elevatedButtonTheme: ElevatedButtonThemeData(
       style: ElevatedButton.styleFrom(
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.all(Radius.circular(100.spMin))
         ),
       ),
      ),
     
     
   );
}