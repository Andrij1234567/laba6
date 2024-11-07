import 'package:flutter/material.dart';
import 'package:lab06/sign_in_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SignInScreen());
  }
}
