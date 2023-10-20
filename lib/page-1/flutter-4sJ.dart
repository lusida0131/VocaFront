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
        // flutterSRW (1:188)
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
              // autogroupp53wwdA (6enowvWDa8QdZQjZ3Zp53W)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 142*fem),
              width: double.infinity,
              height: 24*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // fZA (1:193)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 301*fem, 0*fem),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // o9a (I1:193;2:986)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                          width: 24*fem,
                          height: 24*fem,
                          child: Image.asset(
                            'assets/page-1/images/-J24.png',
                            width: 24*fem,
                            height: 24*fem,
                          ),
                        ),
                        Container(
                          // W3z (I1:193;2:987)
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
                    // settingsQQG (1:190)
                    width: 20*fem,
                    height: 20*fem,
                    child: Image.asset(
                      'assets/page-1/images/settings-gqE.png',
                      width: 20*fem,
                      height: 20*fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroup9c3swQC (6enp45zca5w9TxghMq9c3S)
              margin: EdgeInsets.fromLTRB(14*fem, 0*fem, 14*fem, 0*fem),
              width: double.infinity,
              height: 473*fem,
              child: Stack(
                children: [
                  Positioned(
                    // card3y2 (1:194)
                    left: 0*fem,
                    top: 0*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(9*fem, 45*fem, 9*fem, 19*fem),
                      width: 373*fem,
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
                      child: ImageFiltered(
                        imageFilter: ImageFilter.blur (
                          sigmaX: 2*fem,
                          sigmaY: 2*fem,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroupt7ktGKz (6enpCLFsfWqjCqGVkhT7kt)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 17*fem),
                              width: double.infinity,
                              height: 20*fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // autogrouphshno52 (6enpKusaVGprCQHgmDHSHN)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 0*fem),
                                    width: 232*fem,
                                    height: double.infinity,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // jDa (1:197)
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
                                          // pVv (1:200)
                                          left: 163*fem,
                                          top: 0*fem,
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
                                      ],
                                    ),
                                  ),
                                  Text(
                                    // Kha (1:199)
                                    '목표정답률: 90%',
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2125*ffem/fem,
                                      color: Color(0xff959595),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // autogroupawzpdiG (6enpUA8qahjRwGsVA5awzp)
                              margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 165*fem, 27*fem),
                              width: double.infinity,
                              height: 35*fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // ZM2 (1:202)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 9*fem, 0*fem),
                                    width: 85*fem,
                                    height: double.infinity,
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
                                  Container(
                                    // Pqr (1:198)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
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
                                ],
                              ),
                            ),
                            Container(
                              // shortWQg (1:196)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 21*fem, 59*fem),
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
                            Container(
                              // 1cL (1:201)
                              margin: EdgeInsets.fromLTRB(71*fem, 0*fem, 107*fem, 0*fem),
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    // k48 (I1:201;16:668)
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
                                    // fB6 (I1:201;16:667)
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
                                    // aJ4 (I1:201;16:669)
                                    '(길이가) 짧은, (키가) 작은',
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
                                    // hNg (I1:201;16:670)
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
                                    // d1S (I1:201;16:671)
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
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle2ZQt (1:203)
                    left: 3*fem,
                    top: 98*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(56*fem, 23.92*fem, 53*fem, 33*fem),
                      width: 373*fem,
                      height: 265*fem,
                      decoration: BoxDecoration (
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(50*fem),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // RCC (I1:203;70:829)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 9.62*fem),
                            child: Text(
                              '중단하시겠습니까?',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 35*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2125*ffem/fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Container(
                            // autogroupvv9a7ap (6enpttvcrzTB9tctLgVV9A)
                            margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 12*fem, 27.47*fem),
                            width: double.infinity,
                            height: 37*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // yesDdr (I1:203;70:833)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0.96*fem, 0*fem, 2.56*fem),
                                  width: 85*fem,
                                  height: double.infinity,
                                  decoration: BoxDecoration (
                                    color: Color(0xff0066ff),
                                    borderRadius: BorderRadius.circular(12*fem),
                                  ),
                                  child: Center(
                                    child: Center(
                                      child: Text(
                                        'YES',
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
                                SizedBox(
                                  width: 21*fem,
                                ),
                                Text(
                                  // oreDN (I1:203;70:836)
                                  'or',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Inter',
                                    fontSize: 30*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.2125*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                SizedBox(
                                  width: 21*fem,
                                ),
                                Container(
                                  // nom36 (I1:203;70:830)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0.96*fem, 0*fem, 2.56*fem),
                                  width: 85*fem,
                                  height: double.infinity,
                                  decoration: BoxDecoration (
                                    color: Color(0xff0066ff),
                                    borderRadius: BorderRadius.circular(12*fem),
                                  ),
                                  child: Center(
                                    child: Center(
                                      child: Text(
                                        'NO',
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
                              ],
                            ),
                          ),
                          Container(
                            // 1i8 (I1:203;70:838)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37*fem, 12*fem),
                            child: Text(
                              '응시횟수는 성적과 함께 제출 됩니다.',
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
                            // Wet (I1:203;70:840)
                            constraints: BoxConstraints (
                              maxWidth: 264*fem,
                            ),
                            child: Text(
                              '시험을 재개한 후, 중단하기를 다시 누르게 되면 이번에는 시험이 바로 종료되고, 성적이 제출됩니다.',
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
          );
  }
}