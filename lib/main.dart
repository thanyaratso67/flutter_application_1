import 'package:flutter/material.dart';
import 'login_from_Screen.dart';
 
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Form Validation Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
    ),
    home: const LoginFromScreen(),
    );
  }
}
 
