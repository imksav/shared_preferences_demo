import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePageController extends GetxController {
  final TextEditingController textFieldController = TextEditingController();
  save() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String value = textFieldController.text;

    bool isSaved = await preferences.setString("entered", value);
    if (isSaved) {
      // print("saved");
      textFieldController.clear();
    }
  }

  load() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String loadedValue = pref.getString("entered");
    textFieldController.text = loadedValue;
    print(loadedValue);
  }

  clear() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.clear();
  }
}
