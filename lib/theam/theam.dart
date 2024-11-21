

import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
      colorScheme:  ColorScheme.light(
    background: Colors.grey.shade300,
    primary: Colors.grey.shade900
),
    appBarTheme: AppBarTheme(
    backgroundColor: Colors.grey.shade700,
    foregroundColor: Colors.grey.shade900
),
  dialogTheme: DialogTheme(
    backgroundColor:  Colors.grey.shade700,
    barrierColor: Colors.grey.shade200,
  )
);


ThemeData darkMode = ThemeData(
    brightness: Brightness.dark,
colorScheme: ColorScheme.dark(
background:Colors.grey.shade900 ,
primary:Colors.grey.shade700 ,
),
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.grey.shade700,
        foregroundColor: Colors.grey.shade900
    )
);