import 'package:flutter/material.dart';

class StudyCategoryDev extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;

    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Container(
          padding: EdgeInsets.fromLTRB(12, 55, 12, 0),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xfff8f8f8),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 15, 44),
                width: double.infinity,
                height: 24,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                            width: 24,
                            height: 24,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Image.asset(
                                'assets/page-1/images/-wh2.png',
                                width: 40,
                                height: 40,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              '뒤로가기',
                              style: TextStyle(
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
                margin: EdgeInsets.fromLTRB(12, 0, 19, 43),
                width: double.infinity,
                height: 130,
                child: Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: BorderSide(color: Colors.black, width: 0.3),
                      minimumSize: Size(350, 180),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            color: Colors.white,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        icon: Icon(Icons.close),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  '문제 범위',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: DropdownButton<String>(
                                    items: [
                                      DropdownMenuItem<String>(
                                        value: '중등 입문',
                                        child: Text('중등 입문'),
                                      ),
                                      DropdownMenuItem<String>(
                                        value: '중등 실력',
                                        child: Text('중등 실력'),
                                      ),
                                      DropdownMenuItem<String>(
                                        value: '고등 입문',
                                        child: Text('고등 입문'),
                                      ),
                                      DropdownMenuItem<String>(
                                        value: '고등 실력',
                                        child: Text('고등 실력'),
                                      ),
                                    ],
                                    onChanged: (String? value) {
                                      // Handle the value change
                                    },
                                    hint: Text('선택해주세요'),
                                  ),
                                ),
                                Text(
                                  '문제 타입',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Radio<String>(
                                      value: '단어',
                                      groupValue: '문제 타입',
                                      onChanged: (String? value) {
                                        // Handle the radio button change
                                      },
                                    ),
                                    Text('단어'),
                                    Radio<String>(
                                      value: '의미',
                                      groupValue: '문제 타입',
                                      onChanged: (String? value) {
                                        // Handle the radio button change
                                      },
                                    ),
                                    Text('의미'),
                                  ],
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    // Add your action for "학습 시작" buttoni

                                    // Navigator.push(context,
                                    //     MaterialPageRoute(builder: (context) => GridVoca()));
                                  },
                                  child: Text('학습 시작'),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Text(
                      '깜빡이 학습하기',
                      textAlign: TextAlign.center,
                      style: TextStyle(
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
                      backgroundColor: Colors.white,
                      side: BorderSide(color: Colors.black, width: 0.3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      '단어 List 학습하기',
                      textAlign: TextAlign.center,
                      style: TextStyle(
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
                        backgroundColor: Colors.white,
                        side: BorderSide(color: Colors.black, width: 0.3),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Voca Test 진행하기',
                        textAlign: TextAlign.center,
                        style: TextStyle(
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
                        backgroundColor: Colors.white,
                        side: BorderSide(color: Colors.black, width: 0.3),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        '나만의 단어장 확인',
                        textAlign: TextAlign.center,
                        style: TextStyle(
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
      ),
    );
  }
}
