import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade900,
      height: 150,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(15),
      child: Text("APPCODER", style: GoogleFonts.plaster(
                    textStyle: Theme.of(context).textTheme.headlineSmall, color: Colors.white),),
    );
  }
}
