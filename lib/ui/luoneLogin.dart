import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/main.dart';
import 'package:myapp/ui/studyCategory.dart';
import 'package:myapp/ui/userJoin.dart';
import 'package:myapp/utils.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class LuoneLogin extends StatefulWidget {
  @override
  _LuoneLoginState createState() => _LuoneLoginState();
}

class _LuoneLoginState extends State<LuoneLogin> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String? _usernameError;
  String? _passwordError;

  Future<void> _sendLoginPostRequest() async {
    final id = _idController.text;
    final password = _passwordController.text;

    if (_formKey.currentState!.validate()) {
      const url = 'http://localhost:8080/api/user/login'; // POST API URL.

      final Map<String, dynamic> requestData = {
        'loginId': id,
        'password': password,
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
          MaterialPageRoute(builder: (context) => StudyCategory()),
        );
      } else {
        // 오류 처리
        final decodedResponse = json.decode(utf8.decode(response.bodyBytes));
        print(decodedResponse);
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('로그인 실패'),
              content: Text('권한이 없습니다. 관리자에게 문의하세요.'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            _luoneLogo(),
            _luoneBox(),
            _idInput(),
            _passwordInput(),
            _loginSubmit(),
            _joinSubmit(),
          ],
        ),
      ),
    );
  }

  Widget _luoneLogo() {
    return Container(
      margin: EdgeInsets.fromLTRB(23, 100, 24, 0),
      // CFJ (1:52)
      width: 381,
      height: 53,
      child: Image.asset(
        'assets/page-1/images/ruonelogo.png',
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _luoneBox() {
    return Container(
      // xNt (1:53)
      margin: EdgeInsets.fromLTRB(0, 50, 4, 53),
      width: 169,
      height: 167,
      child: Image.asset(
        'assets/page-1/images/ruonebox.png',
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _idInput() {
    return Container(
      // 4gp (1:47)
      margin: const EdgeInsets.fromLTRB(47, 30, 47, 20),
      //padding: const EdgeInsets.fromLTRB(1, 15, 1, 20),
      width: double.infinity,
      child: TextFormField(
        keyboardType: TextInputType.text,
        validator: _validateId,
        controller: _idController,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          hintText: '아이디',
          hintStyle: SafeGoogleFont(
            'Inter',
            fontSize: 12,
            fontWeight: FontWeight.w400,
            height: 0.2125,
            color: const Color(0xff979797),
          ),
        ),
      ),
    );
  }

  Widget _loginSubmit() {
    return Container(
      // YEc (1:50)
      margin: EdgeInsets.fromLTRB(90, 0, 93, 20),
      width: double.infinity,
      height: 43,
      child: Center(
        child: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(205, 50),
              backgroundColor: const Color(0xff0066ff),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: _sendLoginPostRequest,
            //_submitForm, //

            child: const Text('로그인'),
          ),
        ),
      ),
    );
  }

  Widget _passwordInput() {
    return Container(
      // 67i (1:48)
      margin: EdgeInsets.fromLTRB(47, 0, 47, 50),
      padding: EdgeInsets.fromLTRB(1, 5, 1, 1.5),
      width: double.infinity,
      child: TextFormField(
        controller: _passwordController,
        obscureText: true,
        validator: _validatePassword,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          hintText: '비밀번호',
          hintStyle: SafeGoogleFont(
            'Inter',
            fontSize: 12,
            fontWeight: FontWeight.w400,
            height: 1.5125,
            color: Color(0xff979797),
          ),
        ),
      ),
    );
  }

  Widget _joinSubmit() {
    return Center(
      // 9kC (1:49)
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 0, 6, 0),
        child: TextButton(
          child: Text(
            '회원가입',
            style: SafeGoogleFont(
              'Inter',
              fontSize: 15,
              fontWeight: FontWeight.w400,
              height: 1.2125,
              decoration: TextDecoration.underline,
              color: const Color(0xff979797),
              decorationColor: const Color(0xff979797),
            ),
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => UserJoin()));
          },
        ),
      ),
    );
  }
}
