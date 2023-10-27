import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class UserJoin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(15 * fem, 70 * fem, 12 * fem, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // MNG (1:82)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 35 * fem, 10 * fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // 5ZA (I1:82;2:986)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 5 * fem, 0 * fem),
                    width: 24 * fem,
                    height: 24 * fem,
                    child: Image.asset(
                      'assets/page-1/images/-wh2.png',
                      width: 24 * fem,
                      height: 24 * fem,
                    ),
                  ),
                  Container(
                    // nTa (I1:82;2:987)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 1 * fem, 0 * fem, 0 * fem),
                    child: Text(
                      '회원가입',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // Gde (1:77)
              margin: EdgeInsets.fromLTRB(38 * fem, 40 * fem, 38 * fem, 0),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // zpY (1:78)
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // xFa (I1:78;9:73)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 9 * fem),
                          child: RichText(
                            text: TextSpan(
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2125 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                              children: [
                                TextSpan(
                                  text: '이름  ',
                                ),
                                TextSpan(
                                  text: '*',
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xff148dae),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(
                              0, 10 * fem, 10.41 * fem, 12 * fem),
                          width: double.infinity,
                          child: TextField(
                            decoration: InputDecoration(
                              border: const UnderlineInputBorder(),
                              hintText: '이름을 입력하세요',
                              hintStyle: SafeGoogleFont(
                                'Inter',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125 * ffem / fem,
                                color: const Color(0xff979797),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 55 * fem,
                  ),
                  Container(
                    // mPN (1:79)
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // K9z (I1:79;9:73)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 9 * fem),
                          child: RichText(
                            text: TextSpan(
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2125 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                              children: [
                                const TextSpan(
                                  text: '아이디  ',
                                ),
                                TextSpan(
                                  text: '*',
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xff148dae),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(
                              0, 10 * fem, 10.41 * fem, 12 * fem),
                          width: double.infinity,
                          child: TextField(
                            decoration: InputDecoration(
                              border: const UnderlineInputBorder(),
                              hintText: '아이디를 입력하세요',
                              hintStyle: SafeGoogleFont(
                                'Inter',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125 * ffem / fem,
                                color: const Color(0xff979797),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 55 * fem,
                  ),
                  Container(
                    // 9YL (1:80)
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // hZr (I1:80;9:73)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 9 * fem),
                          child: RichText(
                            text: TextSpan(
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2125 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                              children: [
                                const TextSpan(
                                  text: '비밀번호  ',
                                ),
                                TextSpan(
                                  text: '*',
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xff148dae),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(
                              0, 10 * fem, 10.41 * fem, 12 * fem),
                          width: double.infinity,
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: const UnderlineInputBorder(),
                              hintText: '비밀번호를 입력하세요',
                              hintStyle: SafeGoogleFont(
                                'Inter',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125 * ffem / fem,
                                color: const Color(0xff979797),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 55 * fem,
                  ),
                  Container(
                    // Vu2 (1:81)
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // FdJ (I1:81;9:73)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 9 * fem),
                          child: RichText(
                            text: TextSpan(
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2125 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                              children: [
                                const TextSpan(
                                  text: '비밀번호 확인  ',
                                ),
                                TextSpan(
                                  text: '*',
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xff148dae),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding:
                              EdgeInsets.fromLTRB(0, 10 * fem, 10.41 * fem, 0),
                          width: double.infinity,
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: const UnderlineInputBorder(),
                              hintText: '비밀번호 확인을 입력하세요',
                              hintStyle: SafeGoogleFont(
                                'Inter',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125 * ffem / fem,
                                color: const Color(0xff979797),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // YEc (1:50)
                    margin: EdgeInsets.fromLTRB(90 * fem, 80, 93 * fem, 0),
                    width: double.infinity,
                    height: 43 * fem,
                    child: Center(
                      child: Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(205 * fem, 50 * fem),
                            backgroundColor: const Color(0xff0066ff),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12 * fem),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text('회원가입'),
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
    );
  }
}
