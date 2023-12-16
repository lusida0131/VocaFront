import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class VocaStudyList extends StatefulWidget {
  @override
  _VocaStudyListState createState() => _VocaStudyListState();
}

class _VocaStudyListState extends State<VocaStudyList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(12, 65, 12, 0),
            width: double.infinity,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 80), // card 높이 지정
            width: double.infinity,
            height: 24,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // F3N (1:209)
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 100),
                  height: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // a5e (I1:209;2:986)
                        margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                        width: 24,
                        height: 24,
                        child: Image.asset(
                          'assets/page-1/images/-EwJ.png',
                          width: 24,
                          height: 24,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 1, 250, 0),
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
                Container(
                  width: 20,
                  height: 20,
                  child: Image.asset(
                    'assets/page-1/images/settings-gJU.png',
                    width: 20,
                    height: 20,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15, 0, 15, 30),
            width: 373.0, // 원하는 너비
            height: 473.0, // 원하는 높이
            child: Card(
              elevation: 50,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35.0),
                  side: BorderSide(width: 0.1)),
              color: Colors.grey[300],
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
                    child: Text(
                      'short',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 55,
                        fontWeight: FontWeight.w600,
                        height: 1.2125,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 60, 0, 0),
                    child: Text(
                      '짧은, 키가 작은',
                      style: SafeGoogleFont(
                        'Roboto',
                        fontSize: 40,
                        fontWeight: FontWeight.w400,
                        height: 1.1725,
                        letterSpacing: 0.32,
                        color: Color(0xff0093ff),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
