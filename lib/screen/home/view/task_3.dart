import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class task_3 extends StatefulWidget {
  const task_3({Key? key}) : super(key: key);

  @override
  State<task_3> createState() => _task_3State();
}

class _task_3State extends State<task_3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Corona"),
        ),
      ),
    );
  }
}
