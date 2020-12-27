import 'package:flutter/material.dart';
import 'package:sharedpreferencesdemo/homepage/homepage.dart';
import 'package:sharedpreferencesdemo/stoptime/stoptime.dart';
import 'package:sharedpreferencesdemo/streams/streamexample.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StopTime(),
    );
  }
}
