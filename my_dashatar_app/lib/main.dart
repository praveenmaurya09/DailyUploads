import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[300],
        title: const Text("My Dashatar App"),),
      body: Center(child: Image.asset('images/dashatar.png'),
      ),
    ),
  ));
}