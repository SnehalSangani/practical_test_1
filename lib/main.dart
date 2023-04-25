import 'package:flutter/material.dart';

import 'package:practical_test_1/screen/home/view/home_screen.dart';
import 'package:practical_test_1/screen/home/view/sign_in.dart';
import 'package:practical_test_1/screen/home/view/sign_up.dart';
import 'package:practical_test_1/screen/home/view/task_1.dart';
import 'package:practical_test_1/screen/home/view/task_2.dart';
import 'package:practical_test_1/screen/home/view/task_3.dart';
void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'signin',
      routes: {
        '/':(context) => home(),
        'first':(context) => HomeScreen(),
        'signin':(context) => signin(),
        'signup':(context) => signup(),
        'second':(context) => task_2(),
        'third':(context) => task_3(),
      },
    )
  );
}