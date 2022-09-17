import 'package:flutter/material.dart';

class PriceFeature extends StatelessWidget {
  final String title;
  
  const PriceFeature({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.check_circle_rounded,
          size: 15
        ),
        const SizedBox(
          width: 10
        ),
        Flexible(
            child: Text(title))
      ],
    );
  }
}
