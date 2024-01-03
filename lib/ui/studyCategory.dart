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
        padding: EdgeInsets.fromLTRB(12, 56, 12, 141),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xfff8f8f8),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupfdagMFv (6ensGzdBMpUztPtpxpfDaG)
              margin: EdgeInsets.fromLTRB(0, 0, 15, 44),
              width: double.infinity,
              height: 24,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // ULY (1:233)
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // 1LU (I1:233;2:986)
                          margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                          width: 24,
                          height: 24,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            }, // 뒤로가기 동작
                            child: Image.asset(
                              'assets/page-1/images/-wh2.png',
                              width: 40,
                              height: 40,
                            ),
                          ),
                        ),
                        Container(
                          // L7r (I1:233;2:987)
                          margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
                          child: Text(
                            '뒤로가기',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              height: 1.2125,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // cardAcg (1:237)
              margin: EdgeInsets.fromLTRB(12, 0, 19, 43),
              width: double.infinity,
              height: 130,
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(350, 180),
                    backgroundColor: Color.fromARGB(255, 191, 215, 243),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35),
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
                      fontSize: 35,
                      fontWeight: FontWeight.w600,
                      height: 1.2125,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              // card9Uc (1:234)
              margin: EdgeInsets.fromLTRB(16, 0, 15, 49),
              width: double.infinity,
              height: 130,

              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(350, 180),
                    backgroundColor: const Color.fromARGB(255, 191, 215, 243),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Voca Test 진행하기',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'Inter',
                      fontSize: 35,
                      fontWeight: FontWeight.w600,
                      height: 1.2125,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              // cardkDW (1:240)
              margin: EdgeInsets.fromLTRB(12, 0, 19, 49),
              width: double.infinity,
              height: 130,
              child: Center(
                child: Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(350, 180),
                      backgroundColor: const Color.fromARGB(255, 191, 215, 243),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      '학습설정',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 35,
                        fontWeight: FontWeight.w600,
                        height: 1.2125,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              // cardB3v (1:243)
              margin: EdgeInsets.fromLTRB(17, 0, 14, 0),
              width: double.infinity,
              height: 130,

              child: Center(
                child: Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(350, 180),
                      backgroundColor: const Color.fromARGB(255, 191, 215, 243),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      '나만의 단어장 확인',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 35,
                        fontWeight: FontWeight.w600,
                        height: 1.2125,
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
