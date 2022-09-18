import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoContainer extends StatelessWidget {
  const InfoContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // You own the solution, and get 1 year free maintanance in the project price
    // Can extand the maintanence for a fixed price, two years a time
    // Can upgrade the solution if needed, small changes goes inside the maintanance price, no extra cost
    // Clean archtetcure makes it cheaper and fast, easy to make changes and in real time, scalable
    // Test proof, maintanance also provides test, which makes the solution more robust
    // CI/CD automation provides faster releases.

    return Container(
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 800),
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
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
                                child: Icon(
                                    Icons.settings_input_composite_rounded)),
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
                            CircleAvatar(
                                child: Icon(Icons.construction_rounded)),
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
                            CircleAvatar(
                                child: Icon(Icons.safety_check_rounded)),
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
              const SizedBox(width: 10),
              SvgPicture.asset('assets/images/laptop.svg',
                  width: 300, semanticsLabel: 'Laptop'),
            ],
          ),
        ),
      ),
    );
  }
}
