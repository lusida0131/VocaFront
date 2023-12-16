import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // flutteriwS (1:84)
        padding: EdgeInsets.fromLTRB(14*fem, 293*fem, 14*fem, 293*fem),
        width: double.infinity,
        height: 926*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(20*fem),
        ),
        child: Center(
          // E96 (1:85)
          child: SizedBox(
            width: 400*fem,
            height: 340*fem,
            child: Image.asset(
              'assets/page-1/images/-bfE.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
          );
  }
}