import 'package:flutter/material.dart';

class DetailSection extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String text;
  final bool frame;
  final bool wide;

  const DetailSection(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.text,
      this.frame = false,
      this.wide = false,
      })
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
        const SizedBox(width: 100),
        if (!frame)
          Image.asset(
            imageUrl,
            width: wide ? 400 : 300,
          ),
        if (frame)
          Card(
            clipBehavior: Clip.hardEdge,
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Image.asset(
              imageUrl,
              width: wide ? 400 : 300,
            ),
          )
      ],
    );
  }
}
