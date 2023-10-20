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
        // flutterT7E (1:153)
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
              // autogroupz6g8ZRA (6ennciDsWk6pYhTcGAz6G8)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 142*fem),
              width: double.infinity,
              height: 24*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // V3v (1:158)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 301*fem, 0*fem),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // DVi (I1:158;2:986)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                          width: 24*fem,
                          height: 24*fem,
                          child: Image.asset(
                            'assets/page-1/images/-oJY.png',
                            width: 24*fem,
                            height: 24*fem,
                          ),
                        ),
                        Container(
                          // LaL (I1:158;2:987)
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
                    // settingsFSQ (1:155)
                    width: 20*fem,
                    height: 20*fem,
                    child: Image.asset(
                      'assets/page-1/images/settings-vw2.png',
                      width: 20*fem,
                      height: 20*fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // cardBqr (1:159)
              margin: EdgeInsets.fromLTRB(14*fem, 0*fem, 17*fem, 0*fem),
              padding: EdgeInsets.fromLTRB(0*fem, 45*fem, 0*fem, 75*fem),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // autogrouprjzzToN (6ennsTJJjxzeZmmrfUrjZz)
                    margin: EdgeInsets.fromLTRB(9*fem, 0*fem, 0*fem, 64*fem),
                    width: 225*fem,
                    height: 20*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // asz (1:163)
                          left: 0*fem,
                          top: 0*fem,
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
                          // H1i (1:164)
                          left: 163*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 62*fem,
                              height: 20*fem,
                              child: Text(
                                '[60 개]',
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
                      ],
                    ),
                  ),
                  Container(
                    // resultBMz (1:162)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 36*fem),
                    constraints: BoxConstraints (
                      maxWidth: 330*fem,
                    ),
                    child: Text(
                      '   Result : 나의 정답률 : 00%\n                 (목표 정답률 : 90%)',
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 28*ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2125*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupfthn5yA (6ennwTBeMzXR3b9Wybfthn)
                    margin: EdgeInsets.fromLTRB(8*fem, 0*fem, 0*fem, 0*fem),
                    width: 313.5*fem,
                    height: 165*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // failcTJ (1:161)
                          left: 45.5*fem,
                          top: 4*fem,
                          child: Align(
                            child: SizedBox(
                              width: 268*fem,
                              height: 34*fem,
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  style: SafeGoogleFont (
                                    'Inter',
                                    fontSize: 28*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2125*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: '       Fail',
                                      style: SafeGoogleFont (
                                        'Inter',
                                        fontSize: 28*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2125*ffem/fem,
                                        color: Color(0xfff30606),
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' 재시험을 진행하세요.',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // tJL (1:165)
                          left: 0*fem,
                          top: 0*fem,
                          child: Container(
                            width: 289*fem,
                            height: 165*fem,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // autogroupmpbsbyS (6eno47fD4hk2Wcmcq8MpbS)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 30*fem),
                                  width: 45*fem,
                                  height: 45*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/auto-group-mpbs.png',
                                    width: 45*fem,
                                    height: 45*fem,
                                  ),
                                ),
                                Container(
                                  // vkp (1:168)
                                  margin: EdgeInsets.fromLTRB(55*fem, 0*fem, 0*fem, 15*fem),
                                  child: Text(
                                    '응시 횟수 : 00 회',
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2125*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Container(
                                  // RxU (1:167)
                                  margin: EdgeInsets.fromLTRB(55*fem, 0*fem, 0*fem, 15*fem),
                                  child: Text(
                                    '완료 시간 : 23-07-29(금) 21:30',
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2125*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Container(
                                  // M5S (1:166)
                                  margin: EdgeInsets.fromLTRB(55*fem, 0*fem, 0*fem, 0*fem),
                                  child: Text(
                                    '틀린단어 : short, consider, desk',
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
                        ),
                      ],
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