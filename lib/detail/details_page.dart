import 'package:appcoder/detail/detail_section.dart';
import 'package:appcoder/section_container.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final int id;
  final String imageUrl;
  const DetailsPage({
    Key? key,
    required this.imageUrl,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Image.asset(
                imageUrl,
                height: 200,
              ),
            ),
            if (id == 1)
            const SectionContainer(
              child: DetailSection(imageUrl: 'assets/images/example_1_details/screenshot1.png', title: "Chat messaging", text: "Chat functionallity, makes it easier for people inside the applications to cominicate with each other. Each application can its own costumized chat feature, able to send messages, images, gifs, location and other necessary features.")
            ),
            if (id == 1)
            const SectionContainer(
              child: DetailSection(imageUrl: 'assets/images/example_1_details/search.gif', title: "Search", text: "You own profile showing the item other people need to know about the users in the application. Upload a profile picture and change the information inside your profile to share information about your self with others", frame: true,)
            ),
            if (id == 1)
            const SectionContainer(
              child: DetailSection(imageUrl: 'assets/images/example_1_details/filter.png', title: "Filtering", text: "You own profile showing the item other people need to know about the users in the application. Upload a profile picture and change the information inside your profile to share information about your self with others")
            ),
            if (id == 2)
            const SectionContainer(
              child: DetailSection(imageUrl: 'assets/images/example_2_details/example_2.png', title: "Responsive Layout", text: "The layout can be responsive like for this game. It fits for desktop and web apps as well as mobile screens.")
            ),
            if (id == 2)
            const SectionContainer(
              child: DetailSection(imageUrl: 'assets/images/example_2_details/demo.gif', title: "Animations", text: "A game engine provides options for creating animations. Colision can be detected when two object enters the same position, in this example when the bird collide with a candy it creates a particle animations.", frame: true,)
            ),
            if (id == 3)
            const SectionContainer(
              child: DetailSection(imageUrl: 'assets/images/example_3_details/22.png', title: "Third party authentication", text: "A game engine provides options for creating animations. Colision can be detected when two object enters the same position, in this example when the bird collide with a candy it creates a particle animations.")
            ),
          ],
        ),
      ),
    );
  }
}
