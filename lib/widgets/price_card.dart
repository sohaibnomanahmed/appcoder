import 'package:appcoder/widgets/price_feature.dart';
import 'package:flutter/material.dart';

class PriceCard extends StatelessWidget {
  final IconData icon;
  final String size;
  final String projectPrice;
  final String monthPrice;

  const PriceCard({
    Key? key,
    required this.icon,
    required this.size,
    required this.projectPrice,
    required this.monthPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
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
          const PriceFeature(title: "Runs on either Android and iOS, or Web or Desktop"),
          const PriceFeature(title: "Authentication"),
          const PriceFeature(title: "Notifications"),
          const PriceFeature(title: "Text, Images, Buttons"),
          const PriceFeature(title: "Location"),
          const PriceFeature(title: "Animations"),
          const PriceFeature(title: "Localization"),
        ],
      ),
    );
  }
}
