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
        // flutter3Vr (1:86)
        padding: EdgeInsets.fromLTRB(12*fem, 56*fem, 12*fem, 263*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(20*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupzbvaYSc (6eniERMv9mqi8GX2ozZbVA)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 110*fem),
              width: double.infinity,
              height: 24*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // Frp (1:91)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 301*fem, 0*fem),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // b9z (I1:91;2:986)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                          width: 24*fem,
                          height: 24*fem,
                          child: Image.asset(
                            'assets/page-1/images/-mjN.png',
                            width: 24*fem,
                            height: 24*fem,
                          ),
                        ),
                        Container(
                          // W24 (I1:91;2:987)
                          margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                          child: Text(
                            '뒤로가기',
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2125*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // settingsbZJ (1:88)
                    width: 20*fem,
                    height: 20*fem,
                    child: Image.asset(
                      'assets/page-1/images/settings.png',
                      width: 20*fem,
                      height: 20*fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // cardKVJ (1:92)
              margin: EdgeInsets.fromLTRB(15*fem, 0*fem, 16*fem, 0*fem),
              padding: EdgeInsets.fromLTRB(0*fem, 41*fem, 0*fem, 91*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xfff5f5f5),
                borderRadius: BorderRadius.circular(35*fem),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f000000),
                    offset: Offset(0*fem, 0*fem),
                    blurRadius: 10*fem,
                  ),
                ],
              ),
              child: ImageFiltered(
                imageFilter: ImageFilter.blur (
                  sigmaX: 2*fem,
                  sigmaY: 2*fem,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupus8q8xY (6enipQPHvzrECiC9TzUS8Q)
                      margin: EdgeInsets.fromLTRB(18*fem, 0*fem, 21*fem, 51*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // efz (1:99)
                            margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 38*fem, 0*fem),
                            child: Text(
                              '중등 입문 00번 ~ 00번',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 16*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2125*ffem/fem,
                                color: Color(0xff959595),
                              ),
                            ),
                          ),
                          Container(
                            // 9se (1:100)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 21*fem, 0*fem),
                            child: Text(
                              '[39 / 60]',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 20*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2125*ffem/fem,
                                color: Color(0xff959595),
                              ),
                            ),
                          ),
                          Container(
                            // antdesigncodefilledsYk (1:95)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3.61*fem),
                            width: 20*fem,
                            height: 20*fem,
                            child: Image.asset(
                              'assets/page-1/images/ant-design-code-filled.png',
                              width: 20*fem,
                              height: 20*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupaf5ryLt (6enj8K37wf7zmURnwyaF5r)
                      width: double.infinity,
                      height: 265*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // ametsollicitudincommodocursusl (1:94)
                            left: 31*fem,
                            top: 120*fem,
                            child: Align(
                              child: SizedBox(
                                width: 311*fem,
                                height: 57*fem,
                                child: Text(
                                  'Amet, sollicitudin commodo cursus lorem et blandit. Ultricies ac ultrices malesuada aliquam, orci sagittis amet, amet ut...',
                                  style: SafeGoogleFont (
                                    'Roboto',
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.1725*ffem/fem,
                                    letterSpacing: 0.32*fem,
                                    color: Color(0xff0093ff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // shorttMN (1:98)
                            left: 117*fem,
                            top: 7*fem,
                            child: Align(
                              child: SizedBox(
                                width: 124*fem,
                                height: 59*fem,
                                child: Text(
                                  'short',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Inter',
                                    fontSize: 48*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2125*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // rectangle2BLU (1:101)
                            left: 0*fem,
                            top: 0*fem,
                            child: Align(
                              child: SizedBox(
                                width: 373*fem,
                                height: 265*fem,
                                child: Container(
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(50*fem),
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // yes5we (1:102)
                            left: 80*fem,
                            top: 222*fem,
                            child: Container(
                              width: 85*fem,
                              height: 33.48*fem,
                              decoration: BoxDecoration (
                                color: Color(0xff0066ff),
                                borderRadius: BorderRadius.circular(12*fem),
                              ),
                              child: Center(
                                child: Center(
                                  child: Text(
                                    '저장',
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
                          ),
                          Positioned(
                            // yes8f2 (1:103)
                            left: 200*fem,
                            top: 222*fem,
                            child: Container(
                              width: 85*fem,
                              height: 33.48*fem,
                              decoration: BoxDecoration (
                                color: Color(0xff0066ff),
                                borderRadius: BorderRadius.circular(12*fem),
                              ),
                              child: Center(
                                child: Center(
                                  child: Text(
                                    '취소',
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
                          ),
                          Positioned(
                            // yesBdJ (1:104)
                            left: 48*fem,
                            top: 178*fem,
                            child: Container(
                              width: 60*fem,
                              height: 33*fem,
                              decoration: BoxDecoration (
                                color: Color(0xfff9f9f9),
                              ),
                              child: Center(
                                child: Center(
                                  child: Text(
                                    '4초',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w800,
                                      height: 1.2125*ffem/fem,
                                      letterSpacing: 3.2*fem,
                                      color: Color(0xff959595),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // yesG8x (1:105)
                            left: 113*fem,
                            top: 178*fem,
                            child: Container(
                              width: 60*fem,
                              height: 33*fem,
                              decoration: BoxDecoration (
                                color: Color(0xfff9f9f9),
                              ),
                              child: Center(
                                child: Center(
                                  child: Text(
                                    '6초',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w800,
                                      height: 1.2125*ffem/fem,
                                      letterSpacing: 3.2*fem,
                                      color: Color(0xff959595),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // yes7QU (1:106)
                            left: 178*fem,
                            top: 178*fem,
                            child: Container(
                              width: 60*fem,
                              height: 33*fem,
                              decoration: BoxDecoration (
                                color: Color(0xfff9f9f9),
                              ),
                              child: Center(
                                child: Center(
                                  child: Text(
                                    '8초',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w800,
                                      height: 1.2125*ffem/fem,
                                      letterSpacing: 3.2*fem,
                                      color: Color(0xff959595),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // yesnFi (1:107)
                            left: 243*fem,
                            top: 178*fem,
                            child: Container(
                              width: 60*fem,
                              height: 33*fem,
                              decoration: BoxDecoration (
                                color: Color(0xfff9f9f9),
                              ),
                              child: Center(
                                child: Center(
                                  child: Text(
                                    '10초',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w800,
                                      height: 1.2125*ffem/fem,
                                      letterSpacing: 3.2*fem,
                                      color: Color(0xff959595),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // yes3SY (1:108)
                            left: 130*fem,
                            top: 89*fem,
                            child: Container(
                              width: 70*fem,
                              height: 25*fem,
                              decoration: BoxDecoration (
                                color: Color(0xff0066ff),
                                borderRadius: BorderRadius.only (
                                  topLeft: Radius.circular(8*fem),
                                ),
                              ),
                              child: Center(
                                child: Center(
                                  child: Text(
                                    '짧게',
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
                          ),
                          Positioned(
                            // nogEc (1:109)
                            left: 203*fem,
                            top: 89*fem,
                            child: Container(
                              width: 70*fem,
                              height: 25*fem,
                              decoration: BoxDecoration (
                                color: Color(0xfff9f9f9),
                              ),
                              child: Center(
                                child: Center(
                                  child: Text(
                                    '같음',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w800,
                                      height: 1.2125*ffem/fem,
                                      letterSpacing: 3.2*fem,
                                      color: Color(0xff959595),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // nojTn (1:110)
                            left: 203*fem,
                            top: 114*fem,
                            child: Container(
                              width: 70*fem,
                              height: 25*fem,
                              decoration: BoxDecoration (
                                color: Color(0xfff9f9f9),
                              ),
                              child: Center(
                                child: Center(
                                  child: Text(
                                    '같음',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w800,
                                      height: 1.2125*ffem/fem,
                                      letterSpacing: 3.2*fem,
                                      color: Color(0xff959595),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // yesPHS (1:111)
                            left: 130*fem,
                            top: 114*fem,
                            child: Container(
                              width: 70*fem,
                              height: 25*fem,
                              decoration: BoxDecoration (
                                color: Color(0xff0066ff),
                                borderRadius: BorderRadius.only (
                                  bottomLeft: Radius.circular(8*fem),
                                ),
                              ),
                              child: Center(
                                child: Center(
                                  child: Text(
                                    '길게',
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
                          ),
                          Positioned(
                            // FKe (1:112)
                            left: 49*fem,
                            top: 89*fem,
                            child: Center(
                              child: Align(
                                child: SizedBox(
                                  width: 52*fem,
                                  height: 50*fem,
                                  child: Text(
                                    '표시시간\n    가림시간',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w800,
                                      height: 1.5625*ffem/fem,
                                      letterSpacing: 3.2*fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // notNc (1:113)
                            left: 135*fem,
                            top: 44*fem,
                            child: Container(
                              width: 85*fem,
                              height: 33.48*fem,
                              decoration: BoxDecoration (
                                color: Color(0xfff9f9f9),
                                borderRadius: BorderRadius.only (
                                  topRight: Radius.circular(8*fem),
                                  bottomRight: Radius.circular(8*fem),
                                ),
                              ),
                              child: Center(
                                child: Center(
                                  child: Text(
                                    '의미',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w800,
                                      height: 1.2125*ffem/fem,
                                      letterSpacing: 3.2*fem,
                                      color: Color(0xff959595),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // noWet (1:114)
                            left: 276*fem,
                            top: 89*fem,
                            child: Container(
                              width: 70*fem,
                              height: 25*fem,
                              decoration: BoxDecoration (
                                color: Color(0xfff9f9f9),
                                borderRadius: BorderRadius.only (
                                  topRight: Radius.circular(8*fem),
                                ),
                              ),
                              child: Center(
                                child: Center(
                                  child: Text(
                                    '길게',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w800,
                                      height: 1.2125*ffem/fem,
                                      letterSpacing: 3.2*fem,
                                      color: Color(0xff959595),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // noaPr (1:115)
                            left: 276*fem,
                            top: 114*fem,
                            child: Container(
                              width: 70*fem,
                              height: 25*fem,
                              decoration: BoxDecoration (
                                color: Color(0xfff9f9f9),
                                borderRadius: BorderRadius.only (
                                  bottomRight: Radius.circular(8*fem),
                                ),
                              ),
                              child: Center(
                                child: Center(
                                  child: Text(
                                    '짧게',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w800,
                                      height: 1.2125*ffem/fem,
                                      letterSpacing: 3.2*fem,
                                      color: Color(0xff959595),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // yesqqa (1:116)
                            left: 48*fem,
                            top: 44*fem,
                            child: Container(
                              width: 85*fem,
                              height: 33.48*fem,
                              decoration: BoxDecoration (
                                color: Color(0xff0066ff),
                                borderRadius: BorderRadius.only (
                                  topLeft: Radius.circular(8*fem),
                                  bottomLeft: Radius.circular(8*fem),
                                ),
                              ),
                              child: Center(
                                child: Center(
                                  child: Text(
                                    '단어',
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
                          ),
                          Positioned(
                            // HSg (1:117)
                            left: 27*fem,
                            top: 16*fem,
                            child: Align(
                              child: SizedBox(
                                width: 103*fem,
                                height: 20*fem,
                                child: Text(
                                  '깜빡이 영역 설정',
                                  style: SafeGoogleFont (
                                    'Inter',
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2125*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // mck (1:118)
                            left: 45.5*fem,
                            top: 149.5*fem,
                            child: Center(
                              child: Align(
                                child: SizedBox(
                                  width: 159*fem,
                                  height: 20*fem,
                                  child: Text(
                                    '단어별 학습시간 설정',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w800,
                                      height: 1.2125*ffem/fem,
                                      letterSpacing: 3.2*fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}