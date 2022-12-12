import 'package:appcoder/detail/details_page.dart';
import 'package:flutter/material.dart';

import 'example_title.dart';

class ExamplePreview extends StatelessWidget {
  final int id;
  final String title;
  final Icon icon;
  final String src;

  const ExamplePreview({
    Key? key,
    required this.src,
    required this.title,
    required this.icon,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextButton(
          style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => SelectableRegion(
        selectionControls: materialTextSelectionControls,
        focusNode: FocusNode(),
        child:DetailsPage(id: id, imageUrl: src))));
          },
          child: Column(
            children: [
              const SizedBox(height: 10),
              Image.asset(src, width: 300),
              const SizedBox(height: 20),
              ExampleTitle(
                title: title,
                icon: icon,
              ),
              const SizedBox(height: 20),
            ],
          )),
    );
  }
}
