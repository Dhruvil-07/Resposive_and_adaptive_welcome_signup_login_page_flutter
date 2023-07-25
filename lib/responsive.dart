import 'package:flutter/material.dart';

class responsive extends StatefulWidget {
  const responsive({
    required this.mobile,
    required this.tab,
    required this.web,
    Key? key}) : super(key: key);

  final Widget mobile;
  final Widget tab;
  final Widget web;


  @override
  State<responsive> createState() => _responsiveState();
}

class _responsiveState extends State<responsive> {
  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(
      builder: (context, constraints){

        print( constraints..maxWidth);

        if(constraints.maxWidth < 480)
          {
             return widget.mobile;
          }
          else if(constraints.maxWidth > 480 && constraints.maxWidth <= 850)
          {
             return widget.tab;
          }
        else
          {
             return widget.web;
          }
      }
      ,);
  }
}
