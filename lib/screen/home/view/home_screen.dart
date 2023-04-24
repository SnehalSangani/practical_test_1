import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Pattern"),
          centerTitle: true,
        ),
        body: Center(
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                SizedBox(height: 30,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'first');
                  },
                  child: Text(
                    "Task 1",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                ),
                SizedBox(height: 30,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'second');
                  },
                  child: Text(
                    "Task 2",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                ),
                SizedBox(height: 30,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'third');
                  },
                  child: Text(
                    "Task 3",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
