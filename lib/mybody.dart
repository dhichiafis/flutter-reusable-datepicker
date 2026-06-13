//import 'dart:nativewrappers/_internal/vm_shared/lib/compact_hash.dart';

import 'package:flutter/material.dart';
import 'package:mydatepic/widget/mydate.dart';
import 'data/data.dart';

class MyBody extends StatefulWidget{
  const MyBody({super.key});

  @override
  State<MyBody> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  DateTime? selectedDate;

  Future<void>_selectDate()async{
    final DateTime? pickedDate=await showDatePicker(
      context: context, 
      initialDate: DateTime.now(),
      firstDate: DateTime(1900), 
      lastDate: DateTime(2099));
    
    setState(() {
      selectedDate=pickedDate;
    });

  }
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text("this is teh date picker"),
        Mydate(selectedDate: selectedDate, onTap: _selectDate)
      ],
    );
  }
}