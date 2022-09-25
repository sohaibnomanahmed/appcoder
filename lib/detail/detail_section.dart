import 'package:flutter/material.dart';

class DetailSection extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String text;
  final bool frame;

  const DetailSection(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.text,
      this.frame = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(title, style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 20),
              Text(text),
            ],
          ),
        ),
        const SizedBox(width: 50),
        if (!frame)
        Image.asset(
          imageUrl,
          width: 300,
        ),
        if (frame)
          Card(
            clipBehavior: Clip.hardEdge,
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Image.asset(
              imageUrl,
              width: 300,
            ),
          )
      ],
    );
  }
}
