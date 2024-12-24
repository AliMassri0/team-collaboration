import 'package:flutter/material.dart';

class Chats{
  late String name;
  late String image;
  late int phonenb;
  late String location;
  late bool open;
  late DateTime dateTime;
  late List <String> medicine;
  Chats({
    required this.name,
    required this.image,
    required this.phonenb,
    required this.location,
    required this.open,
    required this.dateTime,
  });
}