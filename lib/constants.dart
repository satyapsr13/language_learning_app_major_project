import 'dart:async';
// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

const primaryColor = Color(0xff9d92d8);
const secondaryColor = Color(0xff4733b2);

String selectedLanguage = "Hindi";

// String l  = "Hindi";
enum Level { beginner, medium, advance }

Level userLevel = Level.beginner;
String userName = "";
