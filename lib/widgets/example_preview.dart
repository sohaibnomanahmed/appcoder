import 'package:flutter/material.dart';

class ExamplePreview extends StatelessWidget {
  final String src;

  const ExamplePreview({Key? key, required this.src}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100)
          )
        ),
        onPressed: () {}, child: Image.asset(src));
  }
}
