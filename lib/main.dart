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
  String src =
      'https://upload.wikimedia.org/wikipedia/commons/1/13/Wattpad_logo.png';


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
                    const SizedBox(height:20),    
                    OutlinedButton(onPressed: (){}, child: const Text("Contact information"))    
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 500,
            child: Center(
              child: FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/screenshot1.png'),
                    Image.asset('assets/images/screenshot2.png'),
                    Image.asset('assets/images/screenshot3.png'),
                  ],
                ),
              ),
            )
          ),
          Container(
            height: 500,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                Text("Pricing", style: GoogleFonts.fascinate(
                            textStyle:
                                Theme.of(context).textTheme.headlineSmall)),
                const SizedBox(height: 20),                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade200
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(Icons.house_siding_rounded),
                          Text("Extra small"),
                          Text("Price: 300 000 kr"),
                          Text("Maintenance: 10 000 kr/mnd"),
                        ],
                      ),
                    ),
                    const SizedBox(width: 50),
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade200
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(Icons.house_siding_rounded),
                          Text("Extra small"),
                          Text("Price: 300 000 kr"),
                          Text("Maintenance: 10 000 kr/mnd"),
                        ],
                      ),
                    ),
                    const SizedBox(width: 50),
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade200
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(Icons.house_siding_rounded),
                          Text("Extra small"),
                          Text("Price: 300 000 kr"),
                          Text("Maintenance: 10 000 kr/mnd"),
                        ],
                      ),
                    )
                  ],
                )
              ]),
            ),
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
