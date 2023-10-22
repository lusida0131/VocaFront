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
        // flutter1o6 (1:46)
        padding: EdgeInsets.fromLTRB(23 * fem, 112 * fem, 24 * fem, 97 * fem),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // CFJ (1:52)
              width: 381 * fem,
              height: 53 * fem,
              child: Image.asset(
                'assets/page-1/images/ruonelogo.png',
                fit: BoxFit.cover,
              ),
            ),
            Center(
              // 6Lg (1:54)
              child: Container(
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 46 * fem),
                child: Text(
                  '어휘',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont(
                    'Inter',
                    fontSize: 60 * ffem,
                    fontWeight: FontWeight.w800,
                    height: 1.2125 * ffem / fem,
                    color: const Color(0xff2513ef),
                  ),
                ),
              ),
            ),
            Container(
              // xNt (1:53)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 4 * fem, 53 * fem),
              width: 169 * fem,
              height: 167 * fem,
              child: Image.asset(
                'assets/page-1/images/ruonebox.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              // 4gp (1:47)
              margin:
                  EdgeInsets.fromLTRB(47 * fem, 0 * fem, 47 * fem, 25 * fem),
              padding:
                  EdgeInsets.fromLTRB(1 * fem, 13.5 * fem, 1 * fem, 3 * fem),
              width: double.infinity,
              child: TextField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  hintText: '아이디',
                  hintStyle: SafeGoogleFont(
                    'Inter',
                    fontSize: 12 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 0.2125 * ffem / fem,
                    color: const Color(0xff979797),
                  ),
                ),
              ),
            ),
            Container(
              // 67i (1:48)
              margin:
                  EdgeInsets.fromLTRB(47 * fem, 0 * fem, 47 * fem, 50 * fem),
              padding:
                  EdgeInsets.fromLTRB(1 * fem, 5 * fem, 1 * fem, 1.5 * fem),
              width: double.infinity,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  hintText: '비밀번호',
                  hintStyle: SafeGoogleFont(
                    'Inter',
                    fontSize: 12 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.5125 * ffem / fem,
                    color: Color(0xff979797),
                  ),
                ),
              ),
            ),
            Container(
              // YEc (1:50)
              margin:
                  EdgeInsets.fromLTRB(90 * fem, 0 * fem, 93 * fem, 20 * fem),
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
                    child: const Text('로그인'),
                  ),
                ),
              ),
            ),
            Center(
              // 9kC (1:49)
              child: Container(
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 6 * fem, 0 * fem),
                child: TextButton(
                  child: Text(
                    '회원가입',
                    style: SafeGoogleFont(
                      'Inter',
                      fontSize: 15 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2125 * ffem / fem,
                      decoration: TextDecoration.underline,
                      color: const Color(0xff979797),
                      decorationColor: const Color(0xff979797),
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
