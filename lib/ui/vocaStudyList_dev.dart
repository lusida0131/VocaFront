import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:flutter_tts/flutter_tts.dart';

class VocaStudyList extends StatefulWidget {
  @override
  _VocaStudyListState createState() => _VocaStudyListState();
}

class _VocaStudyListState extends State<VocaStudyList> {
  PageController _pageController = PageController(initialPage: 0);
  int currentIndex = 0;
  Timer? _timer;
  bool showDefinition = false;
  FlutterTts flutterTts = FlutterTts();

  String language = "en-US";
  Map<String, String> voice = {"name": "en-us-x-tpf-local", "locale": "en-US"};
  String engine = "com.google.android.tts";
  double volume = 0.8;
  double pitch = 1.0;
  double rate = 0.5;

  final List<Map<String, String>> cardData = [
    {
      'word': 'Flutter',
      'definition': 'Open-source UI software development toolkit by Google.'
    },
    {
      'word': 'Dart',
      'definition':
          'Programming language optimized for building mobile, desktop, server, and web applications.'
    },
    // Add more cards as needed
    {
      'word': 'sdsa',
      'definition':
          'Programming language optimized for building mobile, desktop, server, and web applications.'
    },
    {
      'word': 'dsa',
      'definition':
          'Programming language optimized for building mobile, desktop, server, and web applications.'
    },
    {
      'word': 'dsad',
      'definition':
          'Programming language optimized for building mobile, desktop, server, and web applications.'
    },
    {
      'word': 'ggg',
      'definition':
          'Programming language optimized for building mobile, desktop, server, and web applications.'
    },
    {
      'word': 'dwdw',
      'definition':
          'Programming language optimized for building mobile, desktop, server, and web applications.'
    },
    {
      'word': 'D',
      'definition':
          'Programming language optimized for building mobile, desktop, server, and web applications.'
    },
  ];

  @override
  void initState() {
    super.initState();
    _showDefinition(); // Show the definition initially
    _startTimer();
    initTts();
  }

  initTts() async {
    await initTtsIosOnly(); // iOS 설정

    flutterTts.setLanguage(language);
    flutterTts.setVoice(voice);
    flutterTts.setEngine(engine);
    flutterTts.setVolume(volume);
    flutterTts.setPitch(pitch);
    flutterTts.setSpeechRate(rate);
  }

  Future<void> initTtsIosOnly() async {
// iOS 전용 옵션 : 공유 오디오 인스턴스 설정
    await flutterTts.setSharedInstance(true);

// 배경 음악와 인앱 오디오 세션을 동시에 사용
    await flutterTts.setIosAudioCategory(
        IosTextToSpeechAudioCategory.ambient,
        [
          IosTextToSpeechAudioCategoryOptions.allowBluetooth,
          IosTextToSpeechAudioCategoryOptions.allowBluetoothA2DP,
          IosTextToSpeechAudioCategoryOptions.mixWithOthers
        ],
        IosTextToSpeechAudioMode.voicePrompt);
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
    Timer(Duration(seconds: 2), () {
      setState(() {
        showDefinition = true;
      });
      _speakWord();
      _hideDefinition();
    });
  }

  void _hideDefinition() {
    Timer(Duration(seconds: 2), () {
      setState(() {
        showDefinition = false;
      });
    });
  }

  void _speakWord() async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.speak(cardData[currentIndex]['word'] ?? '');
  }

  void _stopTimer() {
    _timer?.cancel();
  }

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
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    physics: NeverScrollableScrollPhysics(),
                    onPageChanged: (index) {
                      setState(() {
                        currentIndex = index;
                        showDefinition =
                            false; // Reset showDefinition when manually sliding
                      });
                    },
                    itemCount: cardData.length,
                    itemBuilder: (context, index) {
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
                                      onPressed: () {
                                        _speakWord();
                                      },
                                      child: Text('Speak Word'),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
                                child: Text(
                                  cardData[index]['word'] ?? '',
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
                              SizedBox(height: 16.0),
                              if (showDefinition)
                                Container(
                                  child: Text(
                                    cardData[index]['definition'] ?? '',
                                    style: SafeGoogleFont(
                                      'Roboto',
                                      fontSize: 20,
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
                      );
                    },
                  ),
                ),
                SizedBox(height: 16.0),
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
}
