import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:welcome_login_signup_page_flutter/screens/welcome_screen/welcome_screen.dart';
import 'package:welcome_login_signup_page_flutter/widget_component/image.dart';
import 'package:welcome_login_signup_page_flutter/widget_component/text.dart';

import '../../responsive.dart';

class login_screen extends StatelessWidget {
  const login_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: responsive(
        mobile: mobile_login_screen(),
        tab: tab_login_screen(),
        web: web_login_screen(),
      )
    );
  }
}

bool show = false;

//login screen for mobile
class mobile_login_screen extends StatefulWidget {
   mobile_login_screen({Key? key}) : super(key: key);

  @override
  State<mobile_login_screen> createState() => _mobile_login_screenState();
}

class _mobile_login_screenState extends State<mobile_login_screen> {


  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [

                SizedBox(height: 24.h,),

                //title text
                algerita_text(
                    containt: "Login",
                    fontsize: 30.sp,
                ),

                SizedBox(height: 24.h,),

                 //image
                 Container(
                   height: MediaQuery.of(context).size.height / 2 - 100.h,
                     alignment: Alignment.topCenter,
                     child: image(image_path: "assets/images/login.svg")
                 ),

                SizedBox(height: 24.h,),

                //emal text field
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.w,
                    vertical: 8.h,
                  ),
                  child: TextField(
                     decoration: InputDecoration(
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.all(Radius.circular(30.w))
                       ),
                       focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.all(Radius.circular(30.w)),
                           borderSide: BorderSide(color: Colors.black , width: 1.0),
                       ),
                       hintText: "Enter Email",
                       prefixIcon: Icon(Icons.person , color: Colors.black, size: 22.sp,)
                     ),
                    cursorColor: Colors.black,
                  ),
                ),


                //password text field
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.w,
                    vertical: 10.h,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30.w))
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30.w)),
                          borderSide: BorderSide(color: Colors.black , width: 1.0),
                        ),
                        hintText: "Enter Password",
                        prefixIcon: IconButton(
                          splashRadius: 10.sp,
                          onPressed: (){
                            setState(() {
                              show = !show;
                            });
                          },
                          icon: show == true ?
                          Icon(Icons.remove_red_eye , color: Colors.black, size: 22.sp,) :
                          Icon(Icons.lock , color: Colors.black, size: 22.sp,),
                        ),
                    ),
                    cursorColor: Colors.black,
                    obscureText: show,
                  ),
                ),


                SizedBox(height: 24.h,),

                //login button
                Container(
                  width: 280.w,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple.shade400,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.sp),
                        )
                      ),
                      onPressed: (){},
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 4.sp,
                          vertical: 1.sp,
                        ),
                        child: cario_text(
                          containt: "Login",
                          fontsize: 20.sp,
                          fontcolor: Colors.white,
                        ),
                      ),
                  ),
                ),


                SizedBox(height: 24.h,),


                TextButton(
                    onPressed: (){},
                    child: cario_text(
                      containt: "Don't have an Account ?  Sign Up",
                      fontsize: 12.sp,
                      fontcolor: Colors.deepPurple.shade200,
                    )
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}





//tab login screen
class tab_login_screen extends StatefulWidget {
  const tab_login_screen({Key? key}) : super(key: key);

  @override
  State<tab_login_screen> createState() => _tab_login_screenState();
}

class _tab_login_screenState extends State<tab_login_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(
         child: Container(
           height: double.infinity,
           width: double.infinity,
           child: SingleChildScrollView(
             child: Column(
               children: [

                 SizedBox(height: 56.h,),

                 //title text
                 algerita_text(
                   containt: "Login",
                   fontsize: 25.sp,
                 ),

                 SizedBox(height: 40.h,),

                 //image
                 Container(
                     height: MediaQuery.of(context).size.height / 2 - 100.h,
                     width: double.infinity,
                     child: image(image_path: "assets/images/login.svg" ,
                     boxFit: BoxFit.contain,
                     )
                 ),

                 SizedBox(height: 32.h,),

                 //emal text field
                 Padding(
                   padding: EdgeInsets.symmetric(
                     horizontal: 60.w,
                     vertical: 8.h,
                   ),
                   child: TextField(
                     decoration: InputDecoration(
                         border: OutlineInputBorder(
                             borderRadius: BorderRadius.all(Radius.circular(30.w))
                         ),
                         focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.all(Radius.circular(30.w)),
                           borderSide: BorderSide(color: Colors.black , width: 1.0),
                         ),
                         hintText: "Enter Email",
                         prefixIcon: Icon(Icons.person , color: Colors.black, size: 13.sp,)
                     ),
                     cursorColor: Colors.black,
                   ),
                 ),


                 //password text field
                 Padding(
                   padding: EdgeInsets.symmetric(
                     horizontal: 60.w,
                     vertical: 10.h,
                   ),
                   child: TextField(
                     decoration: InputDecoration(
                       border: OutlineInputBorder(
                           borderRadius: BorderRadius.all(Radius.circular(30.w))
                       ),
                       focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.all(Radius.circular(30.w)),
                         borderSide: BorderSide(color: Colors.black , width: 1.0),
                       ),
                       hintText: "Enter Password",
                       prefixIcon: IconButton(
                         splashRadius: 10.sp,
                         onPressed: (){
                           setState(() {
                             show = !show;
                           });
                         },
                         icon: show == true ?
                         Icon(Icons.remove_red_eye , color: Colors.black, size: 13.sp,) :
                         Icon(Icons.lock , color: Colors.black, size: 13.sp,),
                       ),
                     ),
                     cursorColor: Colors.black,
                     obscureText: show,
                   ),
                 ),


                 SizedBox(height: 32.h,),

                 //login button
                 Container(
                   width: 230.w,
                   child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.deepPurple.shade400,
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(20.sp),
                         )
                     ),
                     onPressed: (){},
                     child: Padding(
                       padding: EdgeInsets.symmetric(
                         horizontal: 4.sp,
                         vertical: 1.sp,
                       ),
                       child: cario_text(
                         containt: "Login",
                         fontsize: 13.sp,
                         fontcolor: Colors.white,
                       ),
                     ),
                   ),
                 ),


                 SizedBox(height: 24.h,),


                 TextButton(
                     onPressed: (){},
                     child: cario_text(
                       containt: "Don't have an Account ?  Sign Up",
                       fontsize: 8.sp,
                       fontcolor: Colors.deepPurple.shade200,
                     )
                 ),

               ],
             ),
           ),
         ),
       ),
    );
  }
}



//web login screen
class web_login_screen extends StatefulWidget {
  const web_login_screen({Key? key}) : super(key: key);

  @override
  State<web_login_screen> createState() => _web_login_screenState();
}

class _web_login_screenState extends State<web_login_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(

            children: [

              SizedBox(height: 32.h,),

              //title text
              algerita_text(
                containt: "Login",
                fontsize: 15.sp,
              ),

              //row for image and put
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 4.w,
                  ),
                  child: Row(
                    children: [

                    Expanded(
                      child: Container(
                        height: MediaQuery.of(context).size.height / 2,
                        child: image(image_path: "assets/images/login.svg" ,
                        ),
                      ),
                    ),

                      SizedBox(width: 10.w,),

                      Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            //email text field
                            Padding(
                              padding:EdgeInsets.symmetric(
                                 horizontal: 20.w,
                                 vertical: 10.h,
                              ),
                              child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(30.w))
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(30.w)),
                                        borderSide: BorderSide(color: Colors.black , width: 1.0),
                                      ),
                                      hintText: "Enter Email",
                                      prefixIcon: Icon(Icons.person , color: Colors.black, size: 8.sp,)
                                  ),
                                  cursorColor: Colors.black,
                                ),
                            ),


                            SizedBox(height: 16.h,),

                            //password text field
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20.w,
                                vertical: 10.h,
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(30.w))
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(30.w)),
                                    borderSide: BorderSide(color: Colors.black , width: 1.0),
                                  ),
                                  hintText: "Enter Password",
                                  prefixIcon: IconButton(
                                    splashRadius: 4.sp,
                                    onPressed: (){
                                      setState(() {
                                        show = !show;
                                      });
                                    },
                                    icon: show == true ?
                                    Icon(Icons.remove_red_eye , color: Colors.black, size: 8.sp,) :
                                    Icon(Icons.lock , color: Colors.black, size: 8.sp,),
                                  ),
                                ),
                                cursorColor: Colors.black,
                                obscureText: show,
                              ),
                            ),


                            SizedBox(height: 32.h,),

                            //login Button
                            Container(
                              width: 115.w,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.deepPurple.shade400,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.sp),
                                    )
                                ),
                                onPressed: (){},
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 4.sp,
                                    vertical: 1.sp,
                                  ),
                                  child: cario_text(
                                    containt: "Login",
                                    fontsize: 6.sp,
                                    fontcolor: Colors.white,
                                  ),
                                ),
                              ),
                            ),


                            SizedBox(height: 24.h,),


                            TextButton(
                                onPressed: (){},
                                child: cario_text(
                                  containt: "Don't have an Account ?  Sign Up",
                                  fontsize: 5.sp,
                                  fontcolor: Colors.deepPurple.shade200,
                                )
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
