import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MemoEditPage extends StatelessWidget {
  final String _current;
  final Function _onSave;

  const MemoEditPage(this._current, this._onSave, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _memoText = TextEditingController(text: _current);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _memoText,
              maxLines: 10,
              style: const TextStyle(color: Colors.black),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                child: const Text('保存する'),
                onPressed: () {
                  _onSave(_memoText.text);
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
