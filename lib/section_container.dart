import 'package:flutter/material.dart';

class SectionContainer extends StatelessWidget {
  final Decoration? decoration;
  final Widget child;

  const SectionContainer({Key? key, this.decoration, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: decoration,
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 900),
          child: child,
        ),
      ),
    );
  }
}
