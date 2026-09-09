import 'package:flutter/material.dart';

class FilterModel {
  String title;
  bool value;
  Function(bool?)? onChanged;
  
  FilterModel({required this.value,required this.title,this.onChanged});
}
