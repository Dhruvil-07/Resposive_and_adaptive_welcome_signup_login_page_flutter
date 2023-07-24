import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:welcome_login_signup_page_flutter/responsive.dart';
import 'package:welcome_login_signup_page_flutter/widget_component/button.dart';
import 'package:welcome_login_signup_page_flutter/widget_component/image.dart';
import 'package:welcome_login_signup_page_flutter/widget_component/text.dart';

class welcome_screen extends StatefulWidget {
  const welcome_screen({Key? key}) : super(key: key);

  @override
  State<welcome_screen> createState() => _welcome_screenState();
}

class _welcome_screenState extends State<welcome_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
         child: responsive(
            mobile: mobile_welcome_screen(),
            tab: tab_welcome_screen(),
             web: web_welcome_screen(),
         )
       ),
    );
  }
}



//mobile phone wellcome scrren
class mobile_welcome_screen extends StatefulWidget {
  const mobile_welcome_screen({Key? key}) : super(key: key);

  @override
  State<mobile_welcome_screen> createState() => _mobile_welcome_screenState();
}

class _mobile_welcome_screenState extends State<mobile_welcome_screen> {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return Scaffold(
      body: Container(
         height: double.infinity,
         width: double.infinity,
        child: Column(
          children: [

            SizedBox(height: 64.h,),

            algerita_text(containt: "Welcome to EDU",
              fontsize: 25.sp,
            ),


            SizedBox(height: 40.h,),

            Container(
                height: MediaQuery.of(context).size.height / 2,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.w,
                    vertical: 8.h,
                  ),
                  child: image(image_path: "assets/images/chat.svg"),
                ),
              ),


            SizedBox(height: 40.spMax,) ,

            //login button
            Container(
              width: 200.w,
              child: ElevatedButton(
                 style: ElevatedButton.styleFrom(
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.all(Radius.circular(30.w)),
                   ),
                   elevation: 10.sp,
                   backgroundColor: Colors.deepPurple.shade300,
                 ),
                  onPressed: (){},
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 2.h,
                    ),
                    child: cario_text(
                      containt: "Login",
                      fontsize: 20.sp,
                      fontcolor: Colors.white,
                    ),
              ),
            ),
            ),

            SizedBox(height: 24.h) ,

            Container(
              width: 200.w,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.spMin)),
                  ),
                  elevation: 10.0,
                  backgroundColor: Colors.deepPurple.shade50,
                ),
                onPressed: (){},
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                    vertical: 2.h,
                  ),
                  child: cario_text(
                    containt: "Sign Up",
                    fontsize: 20.sp,
                    fontcolor: Colors.deepPurple.shade400,
                  ),
                ),
              ),
            ),



          ],
        ),
      ),
    );
  }
}




//tab welcome screen
class tab_welcome_screen extends StatefulWidget {
  const tab_welcome_screen({Key? key}) : super(key: key);

  @override
  State<tab_welcome_screen> createState() => _tab_welcome_screenState();
}

class _tab_welcome_screenState extends State<tab_welcome_screen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [

                   SizedBox(height: 40.h,),

                   algerita_text(containt: "Welcome to EDU",
                     fontsize: 22.sp,
                   ),

                   SizedBox(height: 40.spMax,),

                   Container(
                          height: MediaQuery.of(context).size.height / 2,
                           width: double.infinity,
                           child: Padding(
                             padding: EdgeInsets.symmetric(
                               horizontal: 30.w,
                               vertical: 16.h,
                             ),
                             child: image(image_path: "assets/images/chat.svg"),
                           ),
                         ),




                   SizedBox(height: 32.h,) ,

                Container(
                  width: 180.w,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.w)),
                      ),
                      elevation: 10.sp,
                      backgroundColor: Colors.deepPurple.shade300,
                    ),
                    onPressed: (){},
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                        vertical: 2.h,
                      ),
                      child: cario_text(
                        containt: "Login",
                        fontsize: 13.sp,
                        fontcolor: Colors.white,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 24.h,) ,

                Container(
                  width: 170.w,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.w)),
                      ),
                      elevation: 10.sp,
                      backgroundColor: Colors.deepPurple.shade50,
                    ),
                    onPressed: (){},
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                        vertical: 2.h,
                      ),
                      child: cario_text(
                        containt: "Sign Up",
                        fontsize: 13.sp,
                        fontcolor: Colors.deepPurple.shade400,
                      ),
                    ),
                  ),
                ),

                        ],
                      ),
          ),
                  ),
                ),
    );
  }
}



//web or desktop welcomw screen
class web_welcome_screen extends StatefulWidget {
  const web_welcome_screen({Key? key}) : super(key: key);

  @override
  State<web_welcome_screen> createState() => _web_welcome_screenState();
}

class _web_welcome_screenState extends State<web_welcome_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(
         child: Container(
           height: double.infinity,
           width: double.infinity,
           child: Column(
             children: [

               SizedBox(height: 54.h,),

                   algerita_text(containt: "Welcome to EDU",
                     fontsize: 13.sp,
                   ),


                  Expanded(
                    child: Padding(
                      padding:  EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 4.h,
                      ),
                      child: Row(
                        children: [

                          Expanded(
                            child: Container(
                                height: MediaQuery.of(context).size.height / 2 + 50.h,
                                child: image(image_path: "assets/images/chat.svg"),
                              ),
                          ),


                          SizedBox(width: 16.w,),

                          Expanded(
                            child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Container(
                                      width: 100.w,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(30.w)),
                                          ),
                                          elevation: 10.sp,
                                          backgroundColor: Colors.deepPurple.shade300,
                                        ),
                                        onPressed: (){},
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 10.w,
                                            vertical: 4.h,
                                          ),
                                          child: cario_text(
                                            containt: "Login",
                                            fontsize: 8.sp,
                                            fontcolor: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),

                                    SizedBox(height: 48.h,) ,

                                    Container(
                                      width: 100.w,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(30.w)),
                                          ),
                                          elevation: 10.sp,
                                          backgroundColor: Colors.deepPurple.shade50,
                                        ),
                                        onPressed: (){},
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 10.w,
                                            vertical: 4.h,
                                          ),
                                          child: cario_text(
                                            containt: "Sign Up",
                                            fontsize: 8.sp,
                                            fontcolor: Colors.deepPurple.shade400,
                                          ),
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                          ),

                        ],
                      ),
                    ),
                  )

             ],
           ),
         ),
       ),
    );
  }
}
