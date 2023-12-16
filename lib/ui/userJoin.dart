import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/ui/luonelogin.dart';
import 'package:myapp/utils.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class UserJoin extends StatefulWidget {
  @override
  _UserJoinState createState() => _UserJoinState();
}

class _UserJoinState extends State<UserJoin> {
  final GlobalKey<FormState> _formKey1 = GlobalKey<FormState>();
  final TextEditingController _textFieldNameController =
      TextEditingController();
  final TextEditingController _textFieldIdController = TextEditingController();
  final TextEditingController _textFieldPwController = TextEditingController();
  final TextEditingController _textFieldRePwController =
      TextEditingController();

  Future<void> _sendPostRequest() async {
    if (_formKey1.currentState!.validate()) {
      const url =
          'http://localhost:8080/api/user/join'; // POST 요청을 보낼 API URL로 대체해주세요.

      final Map<String, dynamic> requestData = {
        'loginId': _textFieldIdController.text,
        'password': _textFieldPwController.text,
        'username': _textFieldNameController.text,
      };

      final response = await http.post(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8', // Content-Type 설정
        },
        body: jsonEncode(requestData), // JSON 데이터로 인코딩
      );

      if (response.statusCode == 200) {
        // 성공적으로 요청을 보냈을 때의 처리
        final decodedResponse = json.decode(utf8.decode(response.bodyBytes));
        print(decodedResponse);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LuoneLogin()),
        );
      } else {
        // 오류 처리
        final decodedResponse = json.decode(utf8.decode(response.bodyBytes));
        print(decodedResponse);

        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('회원가입 실패'),
              content: Text('중복된 아이디가 있습니다.'),
              actions: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff0066ff),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop(); // 팝업 닫기
                  },
                  child: Text('확인'),
                ),
              ],
            );
          },
        );
      }
    }
  }

  String? _validateName(String? value) {
    if (value == null || value.isEmpty) {
      return '이름을 입력하세요.';
    }
    // 여기에 추가적인 유효성 검사 규칙을 적용할 수 있습니다.
    return null;
  }

  String? _validateId(String? value) {
    if (value == null || value.isEmpty) {
      return '아이디를 입력하세요.';
    }
    // 여기에 추가적인 유효성 검사 규칙을 적용할 수 있습니다.
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return '비밀번호를 입력하세요.';
    }
    // 여기에 추가적인 유효성 검사 규칙을 적용할 수 있습니다.
    return null;
  }

  String? _validateRePassword(String? value) {
    if (value == null || value.isEmpty) {
      return '비밀번호 확인 입력하세요.';
    } else if (_textFieldPwController.text != _textFieldRePwController.text) {
      return '입력하신 비밀번호가 다릅니다.';
    } else {
      return null;
    }
    // 여기에 추가적인 유효성 검사 규칙을 적용할 수 있습니다.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TopPressBack(context),
            Container(
              // Gde (1:77)
              margin: EdgeInsets.fromLTRB(38, 40, 38, 0),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  nameTitle(),
                  nameInput(),
                  SizedBox(
                    height: 30,
                  ),
                  idTitle(),
                  SizedBox(
                    height: 30,
                  ),
                  passwordInput(),
                  SizedBox(
                    height: 30,
                  ),
                  rePasswordInput(),
                  joinButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget TopPressBack(BuildContext context) {
    return Container(
      // MNG (1:82)
      margin: EdgeInsets.fromLTRB(0, 35, 35, 0),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // 5ZA (I1:82;2:986)
            margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
            width: 40,
            height: 30,
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
            // nTa (I1:82;2:987)
            margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
            child: Text(
              '회원가입',
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
    );
  }

  Widget nameTitle() {
    return Container(
      // xFa (I1:78;9:73)
      margin: EdgeInsets.fromLTRB(0, 0, 0, 9),
      child: RichText(
        text: TextSpan(
          style: SafeGoogleFont(
            'Inter',
            fontSize: 14,
            fontWeight: FontWeight.w600,
            height: 1.2125,
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
                fontSize: 14,
                fontWeight: FontWeight.w600,
                height: 1.2125,
                color: Color(0xff148dae),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget nameInput() {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 10, 10.41, 12),
      width: double.infinity,
      child: TextFormField(
        controller: _textFieldNameController,
        validator: _validateName,
        decoration: InputDecoration(
          border: const UnderlineInputBorder(),
          hintText: '이름을 입력하세요',
          hintStyle: SafeGoogleFont(
            'Inter',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            height: 1.2125,
            color: const Color(0xff979797),
          ),
        ),
      ),
    );
  }

  Widget rePasswordInput() {
    return Container(
      // Vu2 (1:81)
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // FdJ (I1:81;9:73)
            margin: EdgeInsets.fromLTRB(0, 0, 0, 9),
            child: RichText(
              text: TextSpan(
                style: SafeGoogleFont(
                  'Inter',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  height: 1.2125,
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
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      height: 1.2125,
                      color: Color(0xff148dae),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 10, 10.41, 0),
            width: double.infinity,
            child: TextFormField(
              controller: _textFieldRePwController,
              validator: _validateRePassword,
              obscureText: true,
              decoration: InputDecoration(
                border: const UnderlineInputBorder(),
                hintText: '비밀번호 확인을 입력하세요',
                hintStyle: SafeGoogleFont(
                  'Inter',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  height: 1.2125,
                  color: const Color(0xff979797),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget passwordInput() {
    return Container(
      // 9YL (1:80)
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // hZr (I1:80;9:73)
            margin: EdgeInsets.fromLTRB(0, 0, 0, 9),
            child: RichText(
              text: TextSpan(
                style: SafeGoogleFont(
                  'Inter',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  height: 1.2125,
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
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      height: 1.2125,
                      color: Color(0xff148dae),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 10, 10.41, 12),
            width: double.infinity,
            child: TextFormField(
              controller: _textFieldPwController,
              validator: _validatePassword,
              obscureText: true,
              decoration: InputDecoration(
                border: const UnderlineInputBorder(),
                hintText: '비밀번호를 입력하세요',
                hintStyle: SafeGoogleFont(
                  'Inter',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  height: 1.2125,
                  color: const Color(0xff979797),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget idTitle() {
    return Container(
      // mPN (1:79)
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // K9z (I1:79;9:73)
            margin: EdgeInsets.fromLTRB(0, 0, 0, 9),
            child: RichText(
              text: TextSpan(
                style: SafeGoogleFont(
                  'Inter',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  height: 1.2125,
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
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      height: 1.2125,
                      color: Color(0xff148dae),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 10, 10.41, 12),
            width: double.infinity,
            child: TextFormField(
              controller: _textFieldIdController,
              validator: _validateId,
              decoration: InputDecoration(
                border: const UnderlineInputBorder(),
                hintText: '아이디를 입력하세요',
                hintStyle: SafeGoogleFont(
                  'Inter',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  height: 1.2125,
                  color: const Color(0xff979797),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget joinButton() {
    return Container(
      margin: EdgeInsets.fromLTRB(90, 50, 93, 0),
      width: double.infinity,
      height: 43,
      child: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(205, 50),
            backgroundColor: const Color(0xff0066ff),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: _sendPostRequest,
          child: const Text('회원가입'),
        ),
      ),
    );
  }
}
