import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade900,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("APPCODER",
              style: GoogleFonts.plaster(
                  textStyle: Theme.of(context).textTheme.headlineSmall,
                  color: Colors.white)),
          const SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.email, color: Colors.white),
              const SizedBox(width: 10),
              Text("info@appcoder.org",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Colors.white)),
            ],
          )
        ],
      ),
    );
  }
}
