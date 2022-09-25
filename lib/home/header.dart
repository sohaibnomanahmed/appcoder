import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Header extends StatelessWidget {
  final void Function() scrollDown;

  const Header({Key? key, required this.scrollDown}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
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
          constraints: const BoxConstraints(maxWidth: 900),
          padding: const EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              //SizedBox(height: 100, width: 100, child: Lottie.asset('sleep_cat.json')),
              Text(
                "APPCODER",
                style: GoogleFonts.plaster(
                    textStyle: Theme.of(context).textTheme.headlineSmall),
              ),
              Text("We Create Beautiful Applications",
                  style: GoogleFonts.fascinate(
                      textStyle: Theme.of(context).textTheme.headlineLarge?.copyWith(color: Colors.grey.shade800))),
              const SizedBox(height: 5),
              Text(
                  "Our applications runs on as many platforms as you want, from Android to iOS. Web to Desktop choose what fits you need the most.",
                  style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: scrollDown,
                style: TextButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    padding: const EdgeInsets.all(20)),
                child: const Text("Let's Talk"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
