//here use layout builder for create diffrent device screen lay out

// this is second approch

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:welcome_login_signup_page_flutter/widget_component/image.dart';
import 'package:welcome_login_signup_page_flutter/widget_component/text.dart';

class welcome_screen_lb extends StatefulWidget {
  const welcome_screen_lb({Key? key}) : super(key: key);

  @override
  State<welcome_screen_lb> createState() => _welcome_screen_lbState();
}

class _welcome_screen_lbState extends State<welcome_screen_lb> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LayoutBuilder(builder: (context, constraints)
      {
        if(constraints.maxWidth < 480)
        {
          SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
          return Container(
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
          );
        }
        else if(constraints.maxWidth > 480 && constraints.maxWidth <= 850)
        {
          return  SafeArea(
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
          );
        }
        else
        {
          return  SafeArea(
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
          );
        }
      },
      ),
    );
  }
}
