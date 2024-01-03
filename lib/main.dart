import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/ui/grid_sys_voca.dart';
import 'package:myapp/ui/studyCategory.dart';
import 'package:myapp/ui/userJoin.dart';
import 'package:myapp/ui/vocaStudy_dev.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/ui/luoneLogin.dart';
import 'package:myapp/ui/vocaStudyList_dev.dart';
import 'package:myapp/ui/vocaStudyExamList_dev.dart';
import 'package:myapp/ui/grid_sys_voca.dart';
import 'package:myapp/ui/studyCategory_dev.dart';
//import 'package:flutter_tts/flutter_tts.dart';

void main() {
//  FlutterTts flutterTts = FlutterTts(); // 플러그인 초기화
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          // child: StudyCategory(),
          //child: StudyCategoryDev(),
          //child: VocaStudyKind(),
          //child: LuoneLogin(),
          child: UserJoin(),
          //child: VocaStudyList(),
          //child: (),
          //child: VocaStudyExamList(),
          //child: GridVoca(),
        ),
      ),
    );
  }
}
