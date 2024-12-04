import 'package:flutter/material.dart';
import 'package:guidedlayout2_1679/View/login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginView(),
    );
  }
}

// class LoginView extends StatefulWidget {
//   const LoginView({super.key});

//   @override
//   State<LoginView> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<LoginView> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
