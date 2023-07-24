import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:welcome_login_signup_page_flutter/widget_component/text.dart';

class button extends StatelessWidget {
  button({
    required this.containt,
    this.fontcolor = Colors.black,
    this.buttoncolor = Colors.deepPurple,
    this.fontsize = 20,
    this.fontWeight = FontWeight.bold,
    Key? key}) : super(key: key);

  final String containt;
  Color buttoncolor;
  Color fontcolor;
  double fontsize;
  FontWeight fontWeight;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
           style: ElevatedButton.styleFrom(
             shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.all(Radius.circular(20.spMin)),
             ),
             backgroundColor: buttoncolor,
           ),
          onPressed: (){},
          child: Padding(
            padding:EdgeInsets.symmetric(
              horizontal: 60.w,
              vertical:  4.sp,
            ),
            child: cario_text(
              containt: containt,
              fontcolor: fontcolor,
              fontsize: fontsize,
              fontWeight: fontWeight,
            ),
          )
    );
  }
}
