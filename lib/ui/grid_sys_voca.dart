import 'package:flutter/material.dart';

void main() {
  runApp(GridSysVoca());
}

class GridSysVoca extends StatefulWidget {
  @override
  _GridSysVocaState createState() => _GridSysVocaState();
}

class _GridSysVocaState extends State<GridSysVoca> {
  List<Map> _books = [
    {
      'name': '박현성',
      'count': 1,
      'result': 'David John',
      'grade': 'test',
      'secuss_time': 'test',
      'study_time': 'test'
    },
    {
      'name': '전보영',
      'count': 3,
      'result': 'David John',
      'grade': 'test',
      'secuss_time': 'test',
      'study_time': 'test'
    },
    {
      'name': '하성호',
      'count': 2,
      'result': 'David John',
      'grade': 'test',
      'secuss_time': 'test',
      'study_time': 'test'
    }
  ];
  int _currentSortColumn = 0;
  bool _isSortAsc = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(0, 65, 0, 0),
          scrollDirection: Axis.horizontal,
          child: _createDataTable(),
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
        label: Text('이름'),
        onSort: (columnIndex, _) {
          setState(() {
            _currentSortColumn = columnIndex;
            if (_isSortAsc) {
              _books.sort((a, b) => b['name'].compareTo(a['name']));
            } else {
              _books.sort((a, b) => a['name'].compareTo(b['name']));
            }
            _isSortAsc = !_isSortAsc;
          });
        },
      ),
      DataColumn(
        label: Text('응시횟수'),
        onSort: (columnIndex, _) {
          setState(() {
            _currentSortColumn = columnIndex;
            if (_isSortAsc) {
              _books.sort((a, b) => b['count'].compareTo(a['count']));
            } else {
              _books.sort((a, b) => a['count'].compareTo(b['count']));
            }
            _isSortAsc = !_isSortAsc;
          });
        },
      ),
      DataColumn(
        label: Text('결과'),
        onSort: (columnIndex, _) {
          setState(() {
            _currentSortColumn = columnIndex;
            if (_isSortAsc) {
              _books.sort((a, b) => b['result'].compareTo(a['result']));
            } else {
              _books.sort((a, b) => a['result'].compareTo(b['result']));
            }
            _isSortAsc = !_isSortAsc;
          });
        },
      ),
      DataColumn(
        label: Text('성적'),
        onSort: (columnIndex, _) {
          setState(() {
            _currentSortColumn = columnIndex;
            if (_isSortAsc) {
              _books.sort((a, b) => b['grade'].compareTo(a['grade']));
            } else {
              _books.sort((a, b) => a['grade'].compareTo(b['grade']));
            }
            _isSortAsc = !_isSortAsc;
          });
        },
      ),
      DataColumn(
        label: Text('응시 완료시간'),
        onSort: (columnIndex, _) {
          setState(() {
            _currentSortColumn = columnIndex;
            if (_isSortAsc) {
              _books
                  .sort((a, b) => b['secuss_time'].compareTo(a['secuss_time']));
            } else {
              _books
                  .sort((a, b) => a['secuss_time'].compareTo(b['secuss_time']));
            }
            _isSortAsc = !_isSortAsc;
          });
        },
      ),
      DataColumn(
        label: Text('학습시간'),
        onSort: (columnIndex, _) {
          setState(() {
            _currentSortColumn = columnIndex;
            if (_isSortAsc) {
              _books.sort((a, b) => b['study_time'].compareTo(a['study_time']));
            } else {
              _books.sort((a, b) => a['study_time'].compareTo(b['study_time']));
            }
            _isSortAsc = !_isSortAsc;
          });
        },
      ),
    ];
  }

  List<DataRow> _createRows() {
    return _books
        .map((book) => DataRow(cells: [
              DataCell(Text(book['name'])),
              DataCell(Text(book['count'].toString() + '분')),
              DataCell(Text(book['result'])),
              DataCell(Text(book['grade'])),
              DataCell(Text(book['secuss_time'])),
              DataCell(Text(book['study_time']))
            ]))
        .toList();
  }
}
