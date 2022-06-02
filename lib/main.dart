import 'package:final_app/pages/detailpage.dart';
import 'package:final_app/pages/navpages/main_page.dart';
import 'package:final_app/pages/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        darkTheme: ThemeData(brightness: Brightness.dark),
        home: detailpage());
  }
}
