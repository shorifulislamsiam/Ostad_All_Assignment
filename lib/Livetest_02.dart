import 'package:flutter/material.dart';


import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.blueGrey
          )
      ),
      home:  const Livetest02(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Livetest02 extends StatefulWidget {
  const Livetest02({super.key});

  @override
  State<Livetest02> createState() => _Livetest02State();
}

class _Livetest02State extends State<Livetest02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}
