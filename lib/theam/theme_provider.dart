

import 'package:flutter/material.dart';
import 'package:to_do_app/theam/theam.dart';

class ThemeProvider with ChangeNotifier{

  bool isDarkMode = false ;

  ThemeData get currentTheme => isDarkMode? darkMode : lightMode ;

  void toggleTheme(){
    isDarkMode = !isDarkMode ;
    notifyListeners();
  }

}