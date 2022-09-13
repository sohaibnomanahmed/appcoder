import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String src =
      'https://upload.wikimedia.org/wikipedia/commons/1/13/Wattpad_logo.png';

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        // appBar: AppBar(
        //   leading: null,
        //   automaticallyImplyLeading: false,
        //   title: SizedBox(
        //     height: kToolbarHeight,
        //     child: Image.network(src),
        //   ),
        // ),
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 500,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color.fromARGB(255, 184, 232, 228),
                  const Color.fromARGB(255, 209, 234, 232),
                  const Color.fromARGB(255, 225, 244, 242),
                  Theme.of(context).canvasColor,
                ],
              ),
            ),
            child: Center(
              child: Container(
                constraints: const BoxConstraints(maxWidth: 800),
                padding: const EdgeInsets.all(32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "APPCODER",
                      style: GoogleFonts.plaster(
                          textStyle: Theme.of(context).textTheme.headlineSmall),
                    ),
                    Text("We make Beautiful applications",
                        style: GoogleFonts.fascinate(
                            textStyle:
                                Theme.of(context).textTheme.headlineLarge)),
                    const SizedBox(height: 5),
                    Text(
                        "Our applications runs on as many platforms as you want, from Android to iOS. Web to Desktop choose what fits you need the most.",
                        style: Theme.of(context).textTheme.titleLarge),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 500,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/screenshot1.png'),
                Image.asset('assets/images/screenshot2.png'),
                Image.asset('assets/images/screenshot3.png'),
              ],
            )
          ),
          Container(
            height: 500,
          ),
          Container(
            color: Colors.grey.shade900,
            height: 300,
          ),
        ],
      ),
    ));
  }
}
