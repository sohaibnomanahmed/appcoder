import 'package:flutter/material.dart';

class PriceFeature extends StatelessWidget {
  final String title;
  final bool enabled;

  const PriceFeature({Key? key, required this.title, required this.enabled}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.check_circle_rounded, size: 15, color: enabled ? Colors.teal : Colors.grey,),
        const SizedBox(width: 10),
        Flexible(child: Text(title))
      ],
    );
  }
}
