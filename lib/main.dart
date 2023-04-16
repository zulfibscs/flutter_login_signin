import 'package:flutter/material.dart';
import 'package:login_signup/components/login_page.dart';

import 'components/devices_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
    );
  }
}

