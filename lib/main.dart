import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'pages/splash.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xffcccbc1)),
      home: kIsWeb
          ? const ColoredBox(
              color: Color(0xff77776f),
              child: Center(
                child: SizedBox(width: 402, height: 874, child: SplashPage()),
              ),
            )
          : const SplashPage(),
    );
  }
}
