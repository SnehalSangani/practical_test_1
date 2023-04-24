import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double sliderValue = 1;
  String pattern = '1';

  void _generatePattern(double value) {
    String pattern = '';
    for (int i = 1; i <= value; i++) {
      for(int j = 1; j<=i; j++)
      {
        pattern = pattern + '$j';
      }
      pattern = pattern + '\n';
    }
    setState(() {
      pattern = pattern;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title:  Text("Pattern"),
            backgroundColor: Colors.black,
          ),
          body: Column(
            children: [
               SizedBox(height: 15),
              Slider(
                value: sliderValue,
                min: 1,
                max: 10,
                divisions: 9,
                activeColor: Colors.red,
                inactiveColor: Colors.black,
                label: sliderValue.round().toString(),
                onChanged: (value) {
                  setState(() {
                    sliderValue = value;
                  });
                },
                onChangeEnd: _generatePattern,
              ),
              SizedBox(height: 18),
              Text(pattern,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ));
  }
}