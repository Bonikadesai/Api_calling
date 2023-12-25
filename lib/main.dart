import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview/Moduls/HomePage/Views/home_page.dart';
import 'package:interview/Moduls/SecondPage/second_Screen.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: Home_Page(),
      getPages: [
        GetPage(
          name: '/',
          page: () => Home_Page(),
        ),
        GetPage(
          name: '/second',
          page: () => Second_Scrren(),
        ),
      ],
    ),
  );
}
