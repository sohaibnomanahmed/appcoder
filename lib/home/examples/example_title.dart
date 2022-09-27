import 'package:flutter/material.dart';

class ExampleTitle extends StatelessWidget {
  final String title;
  final Icon icon;

  const ExampleTitle({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
          width: double.infinity,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              icon,
              const SizedBox(width: 10),
              Text(title),
            ],
          )),
    );
  }
}
