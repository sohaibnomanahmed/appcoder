import 'package:flutter/material.dart';

import 'example_preview.dart';

class ExampleContainer extends StatelessWidget {
  const ExampleContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Flexible(
              child: ExamplePreview(
                  id: 1,
                  title: "App Development",
                  icon: Icon(Icons.phone_iphone_rounded),
                  src: 'assets/images/example_1_details/screenshot2.png'),
            ),
            Flexible(
              child: ExamplePreview(
                  id: 2,
                  title: "Game Development",
                  icon: Icon(Icons.gamepad_rounded),
                  src: 'assets/images/example_4.png'),
            ),
            Flexible(
              child: ExamplePreview(
                id: 3,
                title: "Web Devlopment",
                icon: Icon(Icons.web_rounded),
                src: 'assets/images/example_6.png',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
