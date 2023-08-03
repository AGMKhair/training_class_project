import 'package:flutter/material.dart';
import 'package:training101/home.dart';
import 'package:training101/login.dart';
import 'package:training101/registration.dart';

void main() {
  runApp(const App());
}
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:LoginScreen()
    );
  }
}
