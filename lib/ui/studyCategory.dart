import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class StudyCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // flutter4nc (1:228)
        padding: EdgeInsets.fromLTRB(12 * fem, 56 * fem, 12 * fem, 141 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xfff8f8f8),
          borderRadius: BorderRadius.circular(20 * fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupfdagMFv (6ensGzdBMpUztPtpxpfDaG)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 15 * fem, 44 * fem),
              width: double.infinity,
              height: 24 * fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // ULY (1:233)
                    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0, 0 * fem),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // 1LU (I1:233;2:986)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 5 * fem, 0 * fem),
                          width: 24 * fem,
                          height: 24 * fem,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            }, // 뒤로가기 동작
                            child: Image.asset(
                              'assets/page-1/images/-wh2.png',
                              width: 40 * fem,
                              height: 40 * fem,
                            ),
                          ),
                        ),
                        Container(
                          // L7r (I1:233;2:987)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 1 * fem, 0 * fem, 0 * fem),
                          child: Text(
                            '뒤로가기',
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
                  // Container(
                  //   // settingsSgg (1:230)
                  //   width: 20 * fem,
                  //   height: 20 * fem,
                  //   child: Image.asset(
                  //     'assets/page-1/images/settings-x9n.png',
                  //     width: 20 * fem,
                  //     height: 20 * fem,
                  //   ),
                  // ),
                ],
              ),
            ),
            Container(
              // cardAcg (1:237)
              margin:
                  EdgeInsets.fromLTRB(12 * fem, 0 * fem, 19 * fem, 43 * fem),
              width: double.infinity,
              height: 130 * fem,
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(350 * fem, 180 * fem),
                    backgroundColor: Color.fromARGB(255, 191, 215, 243),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35 * fem),
                    ),
                  ),
                  onPressed: () {
                    //Navigator.push(
                    //context,
                    //MaterialPageRoute(
                    //builder: (context) => VocaStudyKind()));
                  },
                  child: Text(
                    'Voca 학습하기',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'Inter',
                      fontSize: 35 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2125 * ffem / fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              // card9Uc (1:234)
              margin:
                  EdgeInsets.fromLTRB(16 * fem, 0 * fem, 15 * fem, 49 * fem),
              width: double.infinity,
              height: 130 * fem,

              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(350 * fem, 180 * fem),
                    backgroundColor: const Color.fromARGB(255, 191, 215, 243),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35 * fem),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Voca Test 진행하기',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'Inter',
                      fontSize: 35 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2125 * ffem / fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              // cardkDW (1:240)
              margin:
                  EdgeInsets.fromLTRB(12 * fem, 0 * fem, 19 * fem, 49 * fem),
              width: double.infinity,
              height: 130 * fem,
              child: Center(
                child: Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(350 * fem, 180 * fem),
                      backgroundColor: const Color.fromARGB(255, 191, 215, 243),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35 * fem),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      '학습설정',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 35 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              // cardB3v (1:243)
              margin: EdgeInsets.fromLTRB(17 * fem, 0 * fem, 14 * fem, 0 * fem),
              width: double.infinity,
              height: 130 * fem,

              child: Center(
                child: Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(350 * fem, 180 * fem),
                      backgroundColor: const Color.fromARGB(255, 191, 215, 243),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35 * fem),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      '나만의 단어장 확인',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 35 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2125 * ffem / fem,
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
    );
  }
}
