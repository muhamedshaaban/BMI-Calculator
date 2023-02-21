import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  final bool isMale;
  final int age;
  final int result;
  const BMIResultScreen(
      {super.key,
      required this.isMale,
      required this.result,
      required this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI Result',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text(
              'Gender :${isMale? 'Male': 'Female'}',
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text('Age : $age',
                style:const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            Text('Result : $result',
                style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
