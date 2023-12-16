import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class VocaStudyKind extends StatefulWidget {
  @override
  _VocaStudyKindState createState() => _VocaStudyKindState();
}

class _VocaStudyKindState extends State<VocaStudyKind> {
  final List<String> items = [
    '중등 입문',
    '중등 실력',
    '고등 입문',
    '고등 실력',
  ];
  String? selectedValue;

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
            width: 373.0, // 원하는 너비
            height: 473.0, // 원하는 높이
            child: Card(
              elevation: 50,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35.0),
                  side: BorderSide(width: 0.1)),
              color: Colors.grey[300],
              //padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                    child: DropdownButtonFormField2<String>(
                      isExpanded: true,
                      decoration: InputDecoration(
                        // Add Horizontal padding using menuItemStyleData.padding so it matches
                        // the menu padding when button's width is not specified.
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 16),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        // Add more decoration..
                      ),
                      hint: const Text(
                        '학습 목록을 선택하세요',
                        style: TextStyle(fontSize: 14),
                      ),
                      items: items
                          .map((item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ))
                          .toList(),
                      validator: (value) {
                        if (value == null) {
                          return '학습 목록을 선택하세요';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        //Do something when selected item is changed.
                      },
                      onSaved: (value) {
                        selectedValue = value.toString();
                      },
                      buttonStyleData: const ButtonStyleData(
                        padding: EdgeInsets.only(right: 8),
                      ),
                      iconStyleData: const IconStyleData(
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black45,
                        ),
                        iconSize: 24,
                      ),
                      dropdownStyleData: DropdownStyleData(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      menuItemStyleData: const MenuItemStyleData(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                      ),
                    ),
                  ),
                  studyStartButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget studyStartButton() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 290, 0, 30),
      width: double.infinity,
      height: 43,
      child: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            textStyle: TextStyle(fontSize: 20),
            fixedSize: Size(198, 43),
            //minimumSize: Size(250, 50),
            backgroundColor: const Color(0xff0066ff),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () {},
          child: const Text('학습시작'),
        ),
      ),
    );
  }
}
