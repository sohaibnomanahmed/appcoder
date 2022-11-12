import 'package:flutter/material.dart';

import 'price_feature.dart';

class PriceCard extends StatelessWidget {
  final IconData icon;
  final String size;
  final String projectPrice;
  final String monthPrice;
  final int numEnabled;

  PriceCard({
    Key? key,
    required this.icon,
    required this.size,
    required this.projectPrice,
    required this.monthPrice,
    required this.numEnabled,
  }) : super(key: key);

  final features = [
    "Basic app functionallity",
    "Custom design",
    "Animations",
    "Layout for mobile and web",
    "Multiple Pages",
    "Localization",
    "Authentication",
    "Notifications",
    "Chat",
    "Embedded Google Maps",
    "Payments with stripe",
    "Gaming features",
    "Search engine"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 400),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey.shade200),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 50),
          const SizedBox(height: 10),
          Text(size, style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 10),
          Text("Price: $projectPrice kr",
              style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 5),
          Text("Maintenance: $monthPrice kr/mnd"),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Divider(),
          ),
          for (int i = 0; i < features.length; i++)
            PriceFeature(
                title: features[i], enabled: i < numEnabled ? true : false),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Divider(),
          ),
          const Text("* Other cost can come from hosting")
        ],
      ),
    );
  }
}
