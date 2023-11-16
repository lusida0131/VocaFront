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
        // flutterpye (1:204)
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
              // autogroupffpuX7N (6enqv7iwdFsY1RiMiYfFpU)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 142*fem),
              width: double.infinity,
              height: 24*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // F3N (1:209)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 301*fem, 0*fem),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // a5e (I1:209;2:986)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                          width: 24*fem,
                          height: 24*fem,
                          child: Image.asset(
                            'assets/page-1/images/-EwJ.png',
                            width: 24*fem,
                            height: 24*fem,
                          ),
                        ),
                        Container(
                          // Hkk (I1:209;2:987)
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
                    // settingsbmS (1:206)
                    width: 20*fem,
                    height: 20*fem,
                    child: Image.asset(
                      'assets/page-1/images/settings-gJU.png',
                      width: 20*fem,
                      height: 20*fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // card8mN (1:210)
              margin: EdgeInsets.fromLTRB(15*fem, 0*fem, 16*fem, 0*fem),
              padding: EdgeInsets.fromLTRB(18*fem, 41*fem, 21*fem, 179*fem),
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupd6acbur (6enrB7HxhrcQojs5tVD6aC)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 58*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // izU (1:217)
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
                          // Rdz (1:218)
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
                          // antdesigncodefilledkAU (1:213)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3.61*fem),
                          width: 20*fem,
                          height: 20*fem,
                          child: Image.asset(
                            'assets/page-1/images/ant-design-code-filled-QFz.png',
                            width: 20*fem,
                            height: 20*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // shortFsv (1:216)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 54*fem),
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
                    // ametsollicitudincommodocursusl (1:212)
                    margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 0*fem),
                    constraints: BoxConstraints (
                      maxWidth: 311*fem,
                    ),
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
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}