import 'package:flutter/material.dart';

class MyItems{
  String title;
  String subtitle;
  IconData icon;
  Widget? route;

  MyItems({required this.title,required this.subtitle,required this.icon, this.route});
}