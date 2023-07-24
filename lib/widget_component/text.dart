import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class algerita_text extends StatelessWidget {
   algerita_text({
    required this.containt ,
    this.fontcolor = Colors.black,
     this.fontsize = 20,
     this.fontWeight = FontWeight.bold,
    Key? key}) : super(key: key);

  final String containt;
  Color fontcolor;
  double fontsize;
  FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      containt,
      style: GoogleFonts.alegreya(
        color: fontcolor,
        fontSize: fontsize,
        fontWeight: fontWeight,
      ),
    );
  }




}class cario_text extends StatelessWidget {
   cario_text({
    required this.containt ,
    this.fontcolor = Colors.black,
     this.fontsize = 20,
     this.fontWeight = FontWeight.bold,
    Key? key}) : super(key: key);

  final String containt;
  Color fontcolor;
  double fontsize;
  FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      containt,
      style: GoogleFonts.cairo(
        color: fontcolor,
        fontSize: fontsize,
        fontWeight: fontWeight,
      ),
    );
  }
}
