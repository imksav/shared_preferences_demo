import 'dart:async';

import 'package:flutter/material.dart';

class StreamExample extends StatelessWidget {
  final StreamController streamController = StreamController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stream Example"),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return Column(
      children: [
        _listenButton(),
        _addButton(),
      ],
    );
  }

  Widget _addButton() {
    return RaisedButton(
      onPressed: () {
        streamController.sink.add(DateTime.now().toIso8601String());
      },
      child: Text("Add"),
    );
  }

  Widget _listenButton() {
    return RaisedButton(
      onPressed: () {
        streamController.stream.listen((event) {
          print(event);
        });
      },
      child: Text("Listen to changes"),
    );
  }
}
