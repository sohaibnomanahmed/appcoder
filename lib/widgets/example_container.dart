import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'example_preview.dart';

class ExampleContainer extends StatelessWidget {
  const ExampleContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/lines.png'), alignment: Alignment.centerRight)
      ),
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 800),
          child: Column(
            children: [
              Text("Examples",
                  style: GoogleFonts.fascinate(
                      textStyle: Theme.of(context).textTheme.headlineSmall)),
              const SizedBox(height: 20),
              FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    ExamplePreview(src: 'assets/images/screenshot1.png'),
                    SizedBox(width: 50),
                    ExamplePreview(src: 'assets/images/screenshot2.png'),
                    SizedBox(width: 50),
                    ExamplePreview(src: 'assets/images/screenshot3.png'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
