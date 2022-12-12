

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StackContainer extends StatelessWidget {
  const StackContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Stack",
            style: GoogleFonts.fascinate(
                textStyle: Theme.of(context).textTheme.headlineSmall)),
        const SizedBox(height: 20),
        SizedBox(child: Image.asset('assets/images/stack.png', height: 150,)),
      ],
    );
  }
}