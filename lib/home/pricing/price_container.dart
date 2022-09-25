import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'price_card.dart';

class PriceContainer extends StatelessWidget {
  const PriceContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("Pricing",
            style: GoogleFonts.fascinate(
                textStyle: Theme.of(context).textTheme.headlineSmall)),
        const SizedBox(height: 20),
        FittedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PriceCard(
                  icon: Icons.house_rounded,
                  size: "S",
                  numEnabled: 4,
                  projectPrice: "300 000",
                  monthPrice: "10 000"),
              const SizedBox(width: 50),
              PriceCard(
                icon: Icons.temple_buddhist_rounded,
                size: "M",
                numEnabled: 8,
                projectPrice: "600 000",
                monthPrice: "30 000",
              ),
              const SizedBox(width: 50),
              PriceCard(
                  icon: Icons.apartment_rounded,
                  size: "L",
                  numEnabled: 12,
                  projectPrice: "1 850 000",
                  monthPrice: "50 000")
            ],
          ),
        ),
        const SizedBox(height: 20),
        const Text(
            "Our team will look into the solution required and fit it into one of the three categories listed below. Price range can change depending on the requirements, but will be inside the range of the spesific category."),
      ],
    );
  }
}
