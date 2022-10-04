
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home/examples/example_container.dart';
import 'home/footer.dart';
import 'home/header.dart';
import 'home/info/info_container.dart';
import 'home/pricing/price_container.dart';
import 'section_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appcoder',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.montserratTextTheme()),
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
  final ScrollController _controller = ScrollController();

  void _scrollDown() {
    _controller.jumpTo(_controller.position.maxScrollExtent);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _controller,
        child: Column(
          children: [
            Header(scrollDown: _scrollDown),
            const SectionContainer(child: ExampleContainer()),
            SectionContainer(child: InfoContainer()),
            SectionContainer(child: PriceContainer()),
            const Footer()
          ],
        ),
      ),
    );
  }
}
