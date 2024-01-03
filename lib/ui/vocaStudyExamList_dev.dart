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

enum ButtonState {
  NotSelected,
  Selected,
}

class Item {
  final String text;

  Item(this.text);
}

class _VocaStudyExamListState extends State<VocaStudyExamList> {
  late List<Item> items;
  late List<ButtonState> buttonStates; // 각 버튼의 상태 저장

  PageController _pageController = PageController(initialPage: 0);
  int currentIndex = 0;
  Timer? _timer;
  bool showDefinition = false;
  final List<Map<String, dynamic>> cardData = [
    {
      "wordId": 651,
      "word": "large",
      "originalMeaning": "큰, 넓은, 많은",
      "wrongMeaning1": "(앞에 챙이 달린) 모자",
      "wrongMeaning2": "행복한",
      "wrongMeaning3": "너무, 또한, 게다가",
      "wrongMeaning4": "(장소) ~에서(부터), (시각) ~부터"
    },
    {
      "wordId": 651,
      "word": "large",
      "originalMeaning": "큰, 넓은, 많은",
      "wrongMeaning1": "(앞에 챙이 달린) 모자",
      "wrongMeaning2": "행복한",
      "wrongMeaning3": "너무, 또한, 게다가",
      "wrongMeaning4": "(장소) ~에서(부터), (시각) ~부터"
    },
    {
      "wordId": 651,
      "word": "large",
      "originalMeaning": "큰, 넓은, 많은",
      "wrongMeaning1": "(앞에 챙이 달린) 모자",
      "wrongMeaning2": "행복한",
      "wrongMeaning3": "너무, 또한, 게다가",
      "wrongMeaning4": "(장소) ~에서(부터), (시각) ~부터"
    },
    {
      "wordId": 651,
      "word": "large",
      "originalMeaning": "큰, 넓은, 많은",
      "wrongMeaning1": "(앞에 챙이 달린) 모자",
      "wrongMeaning2": "행복한",
      "wrongMeaning3": "너무, 또한, 게다가",
      "wrongMeaning4": "(장소) ~에서(부터), (시각) ~부터"
    },
    {
      "wordId": 651,
      "word": "large",
      "originalMeaning": "큰, 넓은, 많은",
      "wrongMeaning1": "(앞에 챙이 달린) 모자",
      "wrongMeaning2": "행복한",
      "wrongMeaning3": "너무, 또한, 게다가",
      "wrongMeaning4": "(장소) ~에서(부터), (시각) ~부터"
    },
    // ... other words
  ];
  int? selectedDefinitionIndex;
  // Update the onPressed callback in the button generation part
  void onDefinitionButtonPressed(int index) {
    setState(() {
      selectedDefinitionIndex = index;

      // Check if the selected definition is the correct one (originalMeaning)
      final String selectedDefinition = getSelectedDefinition(index);
      final String correctDefinition =
          cardData[currentIndex]['originalMeaning'];

      if (selectedDefinition == correctDefinition) {
        // Update the button state to indicate that it's the correct answer
        updateButtonState(index);
      }
    });
  }

  String getSelectedDefinition(int index) {
    final Map<String, dynamic>? currentCard = cardData[currentIndex];

    if (currentCard != null) {
      switch (index) {
        case 0:
          return currentCard['originalMeaning'];
        case 1:
          return currentCard['wrongMeaning1'];
        case 2:
          return currentCard['wrongMeaning2'];
        case 3:
          return currentCard['wrongMeaning3'];
        case 4:
          return currentCard['wrongMeaning4'];
        default:
          return '';
      }
    } else {
      return ''; // or handle this case accordingly based on your requirements
    }
  }

  // Add a method to handle the submission
  void onSubmitButtonPressed() {
    if (selectedDefinitionIndex != null) {
      // Perform the submission logic using cardData[currentIndex]['definitions'][selectedDefinitionIndex]
      print(
          'Selected Definition: ${cardData[currentIndex]['definitions'][selectedDefinitionIndex!]}');
    } else {
      // Handle the case where no definition is selected
      print('Please select a definition before submitting.');
    }
  }

  @override
  void initState() {
    super.initState();
    items = []; // 초기화
    buttonStates = List.generate(5, (index) => ButtonState.NotSelected); // 초기화
    showDefinition = true; // Set showDefinition to true initially
    _startTimer();
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

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 5), (timer) {
      if (currentIndex < cardData.length - 1) {
        currentIndex++;
      } else {
        _stopTimer(); // Stop the timer when reaching the last card
      }
      _pageController.animateToPage(
        currentIndex,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
      _showDefinition();
    });
  }

  void _showDefinition() {
    Timer(Duration(seconds: 5), () {
      setState(() {
        showDefinition = true;
      });
    });
  }

  void _stopTimer() {
    _timer?.cancel();
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
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    physics: NeverScrollableScrollPhysics(),
                    onPageChanged: (index) {
                      setState(() {
                        currentIndex = index;
                        // showDefinition =
                        //     false; // Reset showDefinition when manually sliding
                      });
                    },
                    itemCount: cardData.length,
                    itemBuilder: (context, index) {
                      // Check if currentIndex is a valid index in the cardData list
                      if (currentIndex >= 0 && currentIndex < cardData.length) {
                        return Card(
                          elevation: 50,
                          shadowColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35.0),
                              side: BorderSide(width: 0.1)),
                          color: Colors.grey[300],
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Text(
                                          '중등 입문 00번 ~ 00번',
                                          style: TextStyle(fontSize: 22.0),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        child: Text(
                                          '[${currentIndex + 1} / ${cardData.length}]',
                                          style: TextStyle(fontSize: 20.0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: Text('Speak Word'),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: Text(
                                    cardData[index]['word'] ?? '',
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
                                Container(
                                  child: CountdownTimer(
                                    duration: Duration(minutes: 5),
                                  ),
                                ),
                                SizedBox(height: 16.0),
                                if (showDefinition)
                                  Container(
                                    child: Column(
                                      children: List.generate(
                                        5, // Assuming you always have 5 options
                                        (i) {
                                          return Container(
                                            child: TextButton(
                                              onPressed: () {
                                                onDefinitionButtonPressed(i);
                                              },
                                              style: getButtonStyle(i),
                                              child: Text(
                                                "${i + 1}. ${getSelectedDefinition(i)}",
                                                style: SafeGoogleFont(
                                                  'Inter',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.2125,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        );
                      } else {
                        // Handle the case where currentIndex is out of bounds
                        return SizedBox
                            .shrink(); // or return an empty widget, depending on your requirements
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  // 버튼의 상태에 따라 스타일을 반환
  ButtonStyle getButtonStyle(int index) {
    return TextButton.styleFrom(
      backgroundColor: getButtonBackgroundColor(index),
    );
  }

  Color getButtonBackgroundColor(int index) {
    if (selectedDefinitionIndex != null) {
      if (index == selectedDefinitionIndex) {
        return const Color(0xff0066ff); // Selected button color
      } else if (cardData[currentIndex]['definitions'][index] ==
          cardData[currentIndex]['originalMeaning']) {
        return Colors.green; // Correct answer color
      }
    }
    return Colors.grey; // Default button color
  }

  // 버튼의 상태 업데이트
  void updateButtonState(int index) {
    setState(() {
      // 모든 버튼의 상태 초기화
      buttonStates = List.generate(5, (index) => ButtonState.NotSelected);
      // 선택된 버튼의 상태 업데이트
      buttonStates[index] = buttonStates[index] == ButtonState.Selected
          ? ButtonState.NotSelected
          : ButtonState.Selected;
    });
  }
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
