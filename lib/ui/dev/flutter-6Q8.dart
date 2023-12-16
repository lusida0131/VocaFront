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
        // flutterkjA (1:172)
        padding: EdgeInsets.fromLTRB(12*fem, 56*fem, 12*fem, 231*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(20*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroup3c6cTda (6enoRgsbZZ5qBYbcw43C6C)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 142*fem),
              width: double.infinity,
              height: 24*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // zNc (1:177)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 301*fem, 0*fem),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // v1N (I1:177;2:986)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                          width: 24*fem,
                          height: 24*fem,
                          child: Image.asset(
                            'assets/page-1/images/-ypc.png',
                            width: 24*fem,
                            height: 24*fem,
                          ),
                        ),
                        Container(
                          // 6iU (I1:177;2:987)
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
                    // settingsynG (1:174)
                    width: 20*fem,
                    height: 20*fem,
                    child: Image.asset(
                      'assets/page-1/images/settings-bNY.png',
                      width: 20*fem,
                      height: 20*fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // cardhiG (1:178)
              margin: EdgeInsets.fromLTRB(14*fem, 0*fem, 17*fem, 0*fem),
              width: double.infinity,
              height: 473*fem,
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
              child: Stack(
                children: [
                  Positioned(
                    // shortaGG (1:180)
                    left: 114*fem,
                    top: 144*fem,
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
                    // FtC (1:181)
                    left: 9*fem,
                    top: 45*fem,
                    child: Align(
                      child: SizedBox(
                        width: 169*fem,
                        height: 20*fem,
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
                    ),
                  ),
                  Positioned(
                    // 9Ct (1:182)
                    left: 104*fem,
                    top: 89*fem,
                    child: Align(
                      child: SizedBox(
                        width: 95*fem,
                        height: 20*fem,
                        child: Text(
                          '(응시횟수: 00)',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 16*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2125*ffem/fem,
                            color: Color(0xff959595),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // 2nU (1:183)
                    left: 245*fem,
                    top: 45*fem,
                    child: Align(
                      child: SizedBox(
                        width: 99*fem,
                        height: 20*fem,
                        child: Text(
                          '목표정답률: 90%',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 16*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2125*ffem/fem,
                            color: Color(0xff959595),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // XjE (1:184)
                    left: 172*fem,
                    top: 45*fem,
                    child: Align(
                      child: SizedBox(
                        width: 69*fem,
                        height: 20*fem,
                        child: Text(
                          '[39 / 60]',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 16*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2125*ffem/fem,
                            color: Color(0xff959595),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // 2vt (1:185)
                    left: 80*fem,
                    top: 262*fem,
                    child: Container(
                      width: 177*fem,
                      height: 192*fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            // Xse (I1:185;16:668)
                            '(키가) 큰, (높이가) 높은',
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2125*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                          SizedBox(
                            height: 23*fem,
                          ),
                          Text(
                            // FHr (I1:185;16:667)
                            '귀여운, 깜찍한',
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2125*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                          SizedBox(
                            height: 23*fem,
                          ),
                          Text(
                            // ZZS (I1:185;16:669)
                            '(길이가) 짧은, (키가) 작은',
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2125*ffem/fem,
                              color: Color(0xff0066ff),
                            ),
                          ),
                          SizedBox(
                            height: 23*fem,
                          ),
                          Text(
                            // VT6 (I1:185;16:670)
                            '멋있는 이선우',
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2125*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                          SizedBox(
                            height: 23*fem,
                          ),
                          Text(
                            // R5r (I1:185;16:671)
                            '숙박시설, 단체시설',
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2125*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // xba (1:186)
                    left: 10*fem,
                    top: 82*fem,
                    child: Container(
                      width: 85*fem,
                      height: 35*fem,
                      decoration: BoxDecoration (
                        color: Color(0xff0066ff),
                        borderRadius: BorderRadius.circular(12*fem),
                      ),
                      child: Center(
                        child: Center(
                          child: Text(
                            '중단하기',
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
                    // timebar1Zr (1:187)
                    left: 0*fem,
                    top: 0*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(159*fem, 202*fem, 0*fem, 236*fem),
                      width: 373*fem,
                      height: 473*fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Center(
                            // HXN (I1:187;22:543)
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                              width: double.infinity,
                              child: Text(
                                '4 : 29',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'DM Sans',
                                  fontSize: 15*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3025*ffem/fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // rectangle1zAt (I1:187;22:539)
                            width: double.infinity,
                            height: 10*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(100*fem),
                              color: Color(0xff0066ff),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}