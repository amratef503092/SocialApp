import 'package:flutter/material.dart';

import 'constant/colors.dart';
import 'modules/HomeScreen/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social App',
        theme: ThemeData().copyWith(
          colorScheme: ThemeData().colorScheme.copyWith(
            primary: Colors.black,
          ),

       backgroundColor:  colorLightThemBacGround,
        textTheme: TextTheme(
          bodyText1:TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold
          )
        )
      ),
      home: LoginScreen()
    );
  }
}


