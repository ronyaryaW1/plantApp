import 'package:flutter/material.dart';
import 'package:emarket/screen/Login.dart';
import 'package:emarket/constanst.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plans App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: PrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: TextColor),
      ),
      home: LoginPage(),
    );
  }
}
