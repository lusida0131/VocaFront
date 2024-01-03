import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class GridVoca extends StatefulWidget {
  @override
  _GridVocaState createState() => _GridVocaState();
}

class _GridVocaState extends State<GridVoca> {
  List<Map<String, dynamic>> _books = [
    {'seq': 237, 'word': 'tall', 'definition': '키가 큰, 높은', 'isFavorite': false},
    {'seq': 238, 'word': 'short', 'definition': '짧은', 'isFavorite': false},
    {'seq': 239, 'word': 'big', 'definition': '크기가 큰', 'isFavorite': false}
  ];
  int _currentSortColumn = 0;
  bool _isSortAsc = true;
  bool _hideWord = false;
  bool _hideDefinition = false;
  bool _showFavoritesOnly = false;
  bool _shuffleOrder = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.fromLTRB(0, 65, 0, 0),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 15, 15),
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
                              }, // 뒤로가기 동작
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
                  ],
                ),
              ),
              Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff0066ff),
                    ),
                    onPressed: () {
                      setState(() {
                        _hideWord = !_hideWord;
                      });
                    },
                    child: Text(_hideWord ? '단어 표시' : '단어 가리기'),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff0066ff),
                    ),
                    onPressed: () {
                      setState(() {
                        _hideDefinition = !_hideDefinition;
                      });
                    },
                    child: Text(_hideDefinition ? '뜻 표시' : '뜻 가리기'),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff0066ff),
                    ),
                    onPressed: () {
                      setState(() {
                        _showFavoritesOnly = !_showFavoritesOnly;
                      });
                    },
                    child: Text(_showFavoritesOnly ? '전체 보기' : '즐겨찾기만 보기'),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff0066ff),
                    ),
                    onPressed: () {
                      setState(() {
                        _shuffleOrder = !_shuffleOrder;
                        if (_shuffleOrder) {
                          _books.shuffle();
                        } else {
                          _books.sort((a, b) => a['seq'].compareTo(b['seq']));
                        }
                      });
                    },
                    child: Text(_shuffleOrder ? '순서 섞기' : '순서 섞기'),
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: _createDataTable(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  DataTable _createDataTable() {
    return DataTable(
      columns: _createColumns(),
      rows: _createRows(),
      sortColumnIndex: _currentSortColumn,
      sortAscending: _isSortAsc,
    );
  }

  List<DataColumn> _createColumns() {
    return [
      DataColumn(
        label: Text('순서'),
        onSort: (columnIndex, _) {
          setState(() {
            _currentSortColumn = columnIndex;
            if (_isSortAsc) {
              _books.sort((a, b) => b['seq'].compareTo(a['seq']));
            } else {
              _books.sort((a, b) => a['seq'].compareTo(b['seq']));
            }
            _isSortAsc = !_isSortAsc;
          });
        },
      ),
      DataColumn(
        label: Text('단어'),
        onSort: (columnIndex, _) {
          setState(() {
            _currentSortColumn = columnIndex;
            if (_isSortAsc) {
              _books.sort((a, b) => b['word'].compareTo(a['word']));
            } else {
              _books.sort((a, b) => a['word'].compareTo(b['word']));
            }
            _isSortAsc = !_isSortAsc;
          });
        },
      ),
      DataColumn(
        label: Text('뜻'),
        onSort: (columnIndex, _) {
          setState(() {
            _currentSortColumn = columnIndex;
            if (_isSortAsc) {
              _books.sort((a, b) => b['definition'].compareTo(a['definition']));
            } else {
              _books.sort((a, b) => a['definition'].compareTo(b['definition']));
            }
            _isSortAsc = !_isSortAsc;
          });
        },
      ),
      DataColumn(
        label: Text('즐겨찾기'),
      ),
    ];
  }

  List<DataRow> _createRows() {
    return _books
        .where((book) => (!_showFavoritesOnly || book['isFavorite']))
        .map((book) => DataRow(cells: [
              DataCell(Text(book['seq'].toString())),
              DataCell(_hideWord ? Text('******') : Text(book['word'])),
              DataCell(
                  _hideDefinition ? Text('******') : Text(book['definition'])),
              DataCell(
                IconButton(
                  icon:
                      Icon(book['isFavorite'] ? Icons.star : Icons.star_border),
                  onPressed: () {
                    setState(() {
                      book['isFavorite'] = !book['isFavorite'];
                    });
                  },
                ),
              ),
            ]))
        .toList();
  }
}
