import 'package:Todo_App/views/login/login_view.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.deepPurpleAccent,
        cursorColor: Colors.deepPurpleAccent,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginView(),
    );
  }
}
