import 'package:flutter/material.dart';
import 'package:mydatepic/data/data.dart';

class Mydate extends StatelessWidget{
  const Mydate({super.key,
  required this.selectedDate,
  required this.onTap});
  final void Function() onTap;
  final DateTime? selectedDate;
  String formatDate(DateTime dategiven){
    return "${dategiven.day}/${dategiven.month}/${dategiven.year}";
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        child: Text(selectedDate==null?'select date':formatDate(selectedDate!),style: bodySmall,),
      ),
    );
  }
 }