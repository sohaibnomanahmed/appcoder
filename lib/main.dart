import 'package:appcoder/widgets/block.dart';
import 'package:appcoder/widgets/example_container.dart';
import 'package:appcoder/widgets/footer.dart';
import 'package:appcoder/widgets/header.dart';
import 'package:appcoder/widgets/info_container.dart';
import 'package:appcoder/widgets/price_container.dart';
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
      title: 'Appcoder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.montserratTextTheme()
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:  const [
            Header(),
            ExampleContainer(),
            SizedBox(height: 100),
            InfoContainer(),
            PriceContainer(),
            Footer()
          ],
        ),
      ),
    );
  }
}
