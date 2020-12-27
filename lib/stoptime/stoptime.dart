import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sharedpreferencesdemo/stoptime/stoptimecontroller.dart';

class StopTime extends StatelessWidget {
  StopTimeController stopTimeController = StopTimeController();
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: StopTimeController(),
      builder: (StopTimeController controller) => Scaffold(
        appBar: AppBar(
          title: Text("Stop Time"),
        ),
        floatingActionButton: _floatingActionButton(controller),
        body: _body(controller),
      ),
    );
  }

  Widget _floatingActionButton(StopTimeController controller) {
    return FloatingActionButton(
      onPressed: () {
        controller.stop();
      },
      child: Icon(Icons.timer),
    );
  }

  Widget _body(StopTimeController controller) {
    return ListView(
      children: controller.timeList,
    );
  }
}
