import 'package:appcoder/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';

class DetailSection extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String text;
  final bool frame;
  final bool wide;

  DetailSection(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.text,
      this.frame = false,
      this.wide = false,
      })
      : super(key: key);

  List<Widget> contentBuilder(BuildContext context) => [
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
        const SizedBox(width: 100, height: 100),
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
      ];    

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(mobileLayout: Column(
      mainAxisSize: MainAxisSize.min,
      children: contentBuilder(context),
    )
    , desktopLayout: Row(
      children: contentBuilder(context)
    ));
  }
}
