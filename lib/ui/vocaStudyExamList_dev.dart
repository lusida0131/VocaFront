import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';

class VocaStudyExamList extends StatefulWidget {
  @override
  _VocaStudyExamListState createState() => _VocaStudyExamListState();
}

class Item {
  final String text;

  Item(this.text);
}

class _VocaStudyExamListState extends State<VocaStudyExamList> {
  late List<Item> items;
  @override
  void initState() {
    super.initState();
    items = []; // 초기화

    // 비동기 함수 호출
    fetchData();
  }

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // 서버에서 데이터 성공적으로 받아왔을 때
      final List<dynamic> data = json.decode(response.body);
      setState(() {
        // 받아온 데이터로 아이템 리스트를 생성
        items = data.map((item) => Item(item['text'])).toList();
      });
    } else {
      // 오류 처리
      throw Exception('Failed to load data');
    }
  }

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
                    // iwA (1:129)
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 1),
                    child: Text(
                      '중등 입문 Day 00 ~ 00 [39 / 60] 목표정답률 00%',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        height: 1.2125,
                        color: Color(0xff959595),
                      ),
                    ),
                  ),
                  // Container(
                  //   // iwA (1:129)
                  //   margin: EdgeInsets.fromLTRB(0, 0, 0, 1),
                  //   child: Text(
                  //     '(응시횟수: 00)',
                  //     style: SafeGoogleFont(
                  //       'Inter',
                  //       fontSize: 16,
                  //       fontWeight: FontWeight.w600,
                  //       height: 1.2125,
                  //       color: Color(0xff959595),
                  //     ),
                  //   ),
                  // ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 200, 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(fontSize: 15),
                        fixedSize: Size(85, 35),
                        //minimumSize: Size(250, 50),
                        backgroundColor: const Color(0xff0066ff),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        showBreakPopup(context);
                      },
                      child: const Text('중단하기'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
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
                      child: CountdownTimer(
                    duration: Duration(minutes: 5),
                  )),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "1. (키가) 큰, (높이가) 높은",
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                height: 1.2125,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "2. (키가) 큰, (높이가) 높은",
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                height: 1.2125,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "3. (키가) 큰, (높이가) 높은",
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                height: 1.2125,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "4. (키가) 큰, (높이가) 높은",
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                height: 1.2125,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "5. (키가) 큰, (높이가) 높은",
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                height: 1.2125,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ],
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

  void showBreakPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          title: Text(
            '중단하시겠습니까?',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              height: 1.2125,
              color: Color(0xff000000),
            ),
            textAlign: TextAlign.center,
          ),
          content: Container(
            width: 373,
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ('응시횟수는 성적과 함께 제출됩니다.'),
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    height: 1,
                    color: Color(0xff000000),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  ('시험을 재개한 후, 중단하기를 다시 누르게 되면 이번에는 시험이 바로 종료되고, 성적이 제출됩니다.'),
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    height: 1,
                    color: Color(0xff000000),
                  ),
                )
              ],
            ),
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    backgroundColor: const Color(0xff0066ff),
                    minimumSize: Size(85.0, 35.0),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop(); // 팝업 닫기
                  },
                  child: Text('YES'),
                ),
                SizedBox(width: 20.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    backgroundColor: const Color(0xff0066ff),
                    minimumSize: Size(85.0, 35.0),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop(); // 팝업 닫기
                  },
                  child: Text('NO'),
                ),
              ],
            )
          ],
        );
      },
    );
    // showDialog(
    //   context: context,
    //   builder: (BuildContext context) {
    //     return AlertDialog(
    //       title: Text("중단하기"),
    //       content: Text("시험이 중단되었습니다."),
    //       actions: [
    //         TextButton(
    //           onPressed: () {
    //             // 팝업 닫기
    //             Navigator.of(context).pop();
    //           },
    //           child: Text("확인"),
    //         ),
    //       ],
    //     );
    //   },
    // );
  }
}

class CountdownTimer extends StatefulWidget {
  final Duration duration;

  CountdownTimer({required this.duration});

  @override
  _CountdownTimerState createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  late Timer _timer;
  late double _progress;

  @override
  void initState() {
    super.initState();
    _progress = 0.0;
    startTimer();
  }

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    final int totalSeconds = widget.duration.inSeconds;

    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        setState(() {
          if (_progress < 1) {
            _progress += 1 / totalSeconds;
          } else {
            timer.cancel();
          }
        });
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: Text(
                formatDuration(widget.duration * (1 - _progress)),
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.fromLTRB(40, 5, 0, 0), // 여백 추가
          child: LinearProgressIndicator(
            value: _progress,
            backgroundColor: const Color(0xff0066ff),
            valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
            minHeight: 10.0, // 두께 조절
          ),
        ),
      ],
    );
  }

  String formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "$twoDigitMinutes:$twoDigitSeconds";
  }
}
