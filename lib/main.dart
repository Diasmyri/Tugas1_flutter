import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: RichTextWidget(),
          ),
        ),
      ),
    );
  }
}

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: const TextSpan(
        style: TextStyle(fontSize: 20, color: Colors.white, height: 1.5),
        children: [
          TextSpan(text: 'Halo, nama saya '),
          TextSpan(
            text: 'Dias Mayri',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ),
          TextSpan(text: ',\nseorang '),
          TextSpan(
            text: 'Software Engineer',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.lightBlueAccent,
            ),
          ),
          TextSpan(text: ' & '),
          TextSpan(
            text: 'Developer',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.tealAccent,
            ),
          ),
        ],
      ),
    );
  }
}
