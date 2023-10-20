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
        // flutterhzg (1:134)
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
              // autogrouptehnCwS (6enmjQN2i58K4PAdaztEhn)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 142*fem),
              width: double.infinity,
              height: 24*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // v6k (1:139)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 301*fem, 0*fem),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // Sqn (I1:139;2:986)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                          width: 24*fem,
                          height: 24*fem,
                          child: Image.asset(
                            'assets/page-1/images/-wEQ.png',
                            width: 24*fem,
                            height: 24*fem,
                          ),
                        ),
                        Container(
                          // krU (I1:139;2:987)
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
                    // settings46U (1:136)
                    width: 20*fem,
                    height: 20*fem,
                    child: Image.asset(
                      'assets/page-1/images/settings-Xtk.png',
                      width: 20*fem,
                      height: 20*fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // cardBB6 (1:140)
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
                    // autogroupodjvd36 (6enn4UeahA1dvvdqzbodjv)
                    margin: EdgeInsets.fromLTRB(9*fem, 0*fem, 0*fem, 64*fem),
                    width: 225*fem,
                    height: 20*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // LTJ (1:144)
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
                          // DX6 (1:145)
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
                    // resultK4L (1:143)
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
                    // autogroup3xqjokC (6ennE4CxKvm9AQLsAB3XqJ)
                    margin: EdgeInsets.fromLTRB(9*fem, 0*fem, 75.5*fem, 30*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroup7suaKyS (6ennK8tpdvHnMb1GUN7suA)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 23.5*fem, 0*fem),
                          width: 45*fem,
                          height: 45*fem,
                          child: Image.asset(
                            'assets/page-1/images/auto-group-7sua.png',
                            width: 45*fem,
                            height: 45*fem,
                          ),
                        ),
                        Container(
                          // pass2cx (1:142)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
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
                                  text: 'Pass',
                                  style: SafeGoogleFont (
                                    'Inter',
                                    fontSize: 28*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2125*ffem/fem,
                                    color: Color(0xff0066ff),
                                  ),
                                ),
                                TextSpan(
                                  text: ' 수고하셨습니다.',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // smz (1:146)
                    margin: EdgeInsets.fromLTRB(63*fem, 0*fem, 76*fem, 0*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          // 1dJ (1:149)
                          '응시 횟수 : 00 회',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 16*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2125*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                        SizedBox(
                          height: 15*fem,
                        ),
                        Text(
                          // Lfa (1:148)
                          '완료 시간 : 23-07-29(금) 21:30',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 16*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2125*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                        SizedBox(
                          height: 15*fem,
                        ),
                        Text(
                          // sfW (1:147)
                          '틀린단어 : short, consider, desk',
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
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}