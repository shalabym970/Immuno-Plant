// @dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        fontFamily: "Nunito",
          scaffoldBackgroundColor: const Color(0xfffbecfb)
      ),
      debugShowCheckedModeBanner: false,
      title: 'Immuno-plant',
      home:   Scaffold(
        resizeToAvoidBottomInset: false,
        body: HomePage(pageState: 0),
      ),
    );
  }
}

