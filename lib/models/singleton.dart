import 'package:flutter/cupertino.dart';
import 'dart:io';

class Singleton extends ChangeNotifier {
  bool isGreen = false, isLogged = false;

  //Profile user;

  File image;

  bool isLoading = true;
}