import 'package:flutter/material.dart';
import './common/memo_list.dart';

class MemoListPage extends StatelessWidget {
  const MemoListPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'メモ一覧',
        ),
      ),
      body: Center(
        child: Column(
          children: const <Widget>[
            Expanded(
              child: MemoList(),
            ),
          ],
        ),
      ),
    );
  }
}
