import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

import 'app/sigin_in/sign_in_page.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Time Tracaker',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: SignInPage(),
    );
  }
}
