import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'price_card.dart';

class PriceContainer extends StatelessWidget {
  const PriceContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 800),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Pricing",
                  style: GoogleFonts.fascinate(
                      textStyle: Theme.of(context).textTheme.headlineSmall)),
              const SizedBox(height: 20),
              const Text(
                  "Our team will look into the solution required and fit it into one of the three categories listed below. Price range can change depending on the requirements, but will be inside the range of the spesific category. Currently we dont provide Large applications."),
              const SizedBox(height: 20),
              FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    PriceCard(
                        icon: Icons.house_rounded,
                        size: "S",
                        projectPrice: "200 000",
                        monthPrice: "10 000"),
                    SizedBox(width: 50),
                    PriceCard(
                      icon: Icons.temple_buddhist_rounded,
                      size: "M",
                      projectPrice: "500 000",
                      monthPrice: "30 000",
                    ),
                    SizedBox(width: 50),
                    PriceCard(
                        icon: Icons.apartment_rounded,
                        size: "L",
                        projectPrice: "1 200 000",
                        monthPrice: "50 000")
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