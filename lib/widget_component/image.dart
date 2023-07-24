import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class image extends StatelessWidget {
   image({
    required this.image_path ,
    this.boxFit = BoxFit.contain,
    Key? key}) : super(key: key);

  final String image_path;
  BoxFit boxFit;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(image_path,
      fit: boxFit,
    );
  }
}
