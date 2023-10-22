import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
//import 'package:myapp/page-1/luoneLogin.dart';
// import 'package:myapp/page-1/flutter-9rG.dart';
// import 'package:myapp/page-1/flutter-rtQ.dart';
import 'package:myapp/page-1/userJoin.dart';
// import 'package:myapp/page-1/flutter-Vnp.dart';
// import 'package:myapp/page-1/flutter-FYL.dart';
// import 'package:myapp/page-1/flutter-EJL.dart';
// import 'package:myapp/page-1/flutter-2pQ.dart';
// import 'package:myapp/page-1/flutter-2gY.dart';
// import 'package:myapp/page-1/flutter-6Q8.dart';
// import 'package:myapp/page-1/flutter-4sJ.dart';
// import 'package:myapp/page-1/flutter-2de.dart';
// import 'package:myapp/page-1/flutter-Hc4.dart';
// import 'package:myapp/page-1/flutter-UfA.dart';

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
        body: SingleChildScrollView(
          child: Scene(),
        ),
      ),
    );
  }
}
