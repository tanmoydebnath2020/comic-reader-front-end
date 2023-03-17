import 'package:flutter/material.dart';
import 'package:assignment1/AllPages/register.dart';
import 'package:assignment1/AllPages/login.dart';
import 'package:assignment1/AllPages/homePage.dart';
import 'package:assignment1/AllPages/free_chapter.dart';
import 'package:assignment1/AllPages/full_chapter.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyLogin(),
      routes: {
        'register': (context) => MyRegister(),
        'login': (context) => MyLogin(),
        'homePage': (context) => MyhomePage(),
        'free_chapter': (context) => FreeChapter(),
        'full_chapter': (context) => FullChapter()
      },
    ),
  );
}
