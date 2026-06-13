import 'package:flutter/material.dart';
import 'package:mydatepic/mybody.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
       backgroundColor: Colors.white,
      body: MyBody(),
    );
  }
}