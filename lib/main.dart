import 'package:flutter/material.dart';
import 'package:practical_test_1/screen/home/view/detail_screen.dart';
import 'package:practical_test_1/screen/home/view/home_screen.dart';
import 'package:practical_test_1/screen/home/view/task_1.dart';
import 'package:practical_test_1/screen/home/view/task_2.dart';
import 'package:practical_test_1/screen/home/view/task_3.dart';
void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'detail',
      routes: {
        '/':(context) => home(),
        'first':(context) => HomeScreen(),
        'second':(context) => task_2(),
        'detail':(context) => detail(),
        'third':(context) => task_3(),
      },
    )
  );
}