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
        // flutterSwa (1:55)
        padding: EdgeInsets.fromLTRB(20*fem, 126*fem, 26*fem, 97*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(20*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // tHn (1:62)
              width: 382*fem,
              height: 88*fem,
              child: Image.asset(
                'assets/page-1/images/-cu6.png',
                fit: BoxFit.cover,
              ),
            ),
            Center(
              // 1tC (1:64)
              child: Container(
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 46*fem),
                child: Text(
                  '어휘',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont (
                    'Inter',
                    fontSize: 60*ffem,
                    fontWeight: FontWeight.w800,
                    height: 1.2125*ffem/fem,
                    color: Color(0xff2513ef),
                  ),
                ),
              ),
            ),
            Container(
              // iGp (1:63)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 79*fem),
              width: 170*fem,
              height: 167*fem,
              child: Image.asset(
                'assets/page-1/images/-Jpp.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              // csz (1:56)
              margin: EdgeInsets.fromLTRB(60*fem, 0*fem, 54*fem, 25*fem),
              padding: EdgeInsets.fromLTRB(17*fem, 13.5*fem, 17*fem, 14.5*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                border: Border.all(color: Color(0xffd9d9d9)),
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(8*fem),
              ),
              child: Text(
                '아이디',
                style: SafeGoogleFont (
                  'Inter',
                  fontSize: 12*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.2125*ffem/fem,
                  color: Color(0xff979797),
                ),
              ),
            ),
            Container(
              // 4EC (1:57)
              margin: EdgeInsets.fromLTRB(60*fem, 0*fem, 54*fem, 21*fem),
              padding: EdgeInsets.fromLTRB(17*fem, 13.5*fem, 17*fem, 14.5*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                border: Border.all(color: Color(0xffd9d9d9)),
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(8*fem),
              ),
              child: Text(
                '비밀번호',
                style: SafeGoogleFont (
                  'Inter',
                  fontSize: 12*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.2125*ffem/fem,
                  color: Color(0xff979797),
                ),
              ),
            ),
            Center(
              // JPS (1:61)
              child: Container(
                margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 0*fem, 20*fem),
                child: Text(
                  '권한이 없습니다. 관리자에게 문의하세요.',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont (
                    'Inter',
                    fontSize: 12*ffem,
                    height: 1.2125*ffem/fem,
                    color: Color(0xffff0000),
                  ),
                ),
              ),
            ),
            Container(
              // ykU (1:59)
              margin: EdgeInsets.fromLTRB(93*fem, 0*fem, 91*fem, 25*fem),
              width: double.infinity,
              height: 43*fem,
              decoration: BoxDecoration (
                color: Color(0xff0066ff),
                borderRadius: BorderRadius.circular(12*fem),
              ),
              child: Center(
                child: Center(
                  child: Text(
                    '로그인',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Inter',
                      fontSize: 16*ffem,
                      fontWeight: FontWeight.w800,
                      height: 1.2125*ffem/fem,
                      letterSpacing: 3.2*fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              // S8G (1:58)
              child: Container(
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                child: Text(
                  '회원가입',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont (
                    'Inter',
                    fontSize: 12*ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.2125*ffem/fem,
                    decoration: TextDecoration.underline,
                    color: Color(0xff979797),
                    decorationColor: Color(0xff979797),
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