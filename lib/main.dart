import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/ui/grid_voca.dart';
import 'package:myapp/ui/studyCategory.dart';
import 'package:myapp/ui/userJoin.dart';
import 'package:myapp/ui/vocaStudy_dev.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/ui/luoneLogin.dart';
import 'package:myapp/ui/vocaStudyList_dev.dart';
import 'package:myapp/ui/vocaStudyExamList_dev.dart';
import 'package:myapp/ui/grid_voca.dart';

void main() => runApp(MyApp());

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
            //child: StudyCategory(),
            //child: VocaStudyKind(),
            //child: LuoneLogin(),
            //child: UserJoin(),
            //child: VocaStudyList(),
            //child: VocaStudyExamList(),
            child: GridVoca()),
      ),
    );
  }
}
