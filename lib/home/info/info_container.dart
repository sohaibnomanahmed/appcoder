import 'package:appcoder/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoContainer extends StatelessWidget {
  InfoContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileLayout: Column(
          mainAxisSize: MainAxisSize.min,
          children: content.reversed.toList(),
        ),
        desktopLayout: Row(children: content));
  }

  final content = [
    Flexible(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: const [
                  CircleAvatar(child: Icon(Icons.key)),
                  SizedBox(
                    width: 30,
                  ),
                  Flexible(
                      child: Text(
                          "You own the solution, with 1 year free maintanance")),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: const [
                  CircleAvatar(
                      child: Icon(Icons.settings_input_composite_rounded)),
                  SizedBox(
                    width: 30,
                  ),
                  Flexible(
                      child: Text(
                          "Furthere maintenance can be added, for a fixed price over 2 years a time")),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: const [
                  CircleAvatar(child: Icon(Icons.upcoming_sharp)),
                  SizedBox(
                    width: 30,
                  ),
                  Flexible(
                      child: Text(
                          "You can always upgrade from one plan to another, small changes will be covered inside the maintanance plan and has no extra cost")),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: const [
                  CircleAvatar(child: Icon(Icons.construction_rounded)),
                  SizedBox(
                    width: 30,
                  ),
                  Flexible(
                      child: Text(
                          "We provide clean architecture, which update in real time")),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: const [
                  CircleAvatar(child: Icon(Icons.safety_check_rounded)),
                  SizedBox(
                    width: 30,
                  ),
                  Flexible(
                      child: Text(
                          "Our solutions contains hight test coverage, which makes the solution more robust")),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: const [
                  CircleAvatar(child: Icon(Icons.sync_rounded)),
                  SizedBox(
                    width: 30,
                  ),
                  Flexible(
                      child: Text(
                          "With CI/CD tools the realese and integration is automated and new releases occurs fast")),
                ],
              )
            ],
          ),
        ),
      ),
    ),
    const SizedBox(width: 10, height: 10),
    SvgPicture.asset('assets/images/laptop.svg',
        width: 300, semanticsLabel: 'Laptop'),
  ];
}
