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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: Image.asset((id == 1) ? 'assets/images/app_banner.jpg' : (id == 2) ? 'assets/images/game_banner.jpg' : 'assets/images/web_banner.jpg',
                      fit: BoxFit.cover),
                ),
                Container(
                  padding: const EdgeInsets.all(50.0),
                  constraints: const BoxConstraints(maxWidth: 900),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Image.asset(
                      imageUrl,
                      height: 300,
                    ),
                  ),
                ),
              ],
            ),
            // SectionContainer(
            //   decoration: BoxDecoration(
            //     image: DecorationImage(image: AssetImage((id == 1) ? 'assets/images/app_banner3.jpg' : (id == 2) ? 'assets/images/game_banner.jpg' : 'assets/images/web_banner2.jpg'),
            //           fit: BoxFit.fitWidth),
            //   ),
            //   child: Align(
            //         alignment: Alignment.bottomLeft,
            //         child: Image.asset(
            //           imageUrl,
            //           height: 300,
            //         ),
            //       ),
            //   ),
            if (id == 1)
              SectionContainer(
                  child: DetailSection(
                      imageUrl:
                          'assets/images/example_1_details/screenshot1.png',
                      title: "Chat messaging",
                      text:
                          "Chat functionallity, makes it easier for people inside the applications to cominicate with each other. Each application can its own costumized chat feature, able to send messages, images, gifs, location and other necessary features.")),
            if (id == 1)
              SectionContainer(
                  child: DetailSection(
                      imageUrl: 'assets/images/example_1_details/filter.png',
                      title: "Filtering",
                      text:
                          "You own profile showing the item other people need to know about the users in the application. Upload a profile picture and change the information inside your profile to share information about your self with others")),
            if (id == 1)
              SectionContainer(
                  child: DetailSection(
                imageUrl: 'assets/images/example_1_details/search.gif',
                title: "Search",
                text:
                    "You own profile showing the item other people need to know about the users in the application. Upload a profile picture and change the information inside your profile to share information about your self with others",
                frame: true,
              )),
            if (id == 2)
              SectionContainer(
                  child: DetailSection(
                imageUrl: 'assets/images/example_2_details/demo.gif',
                title: "Animations",
                text:
                    "A game engine provides options for creating animations. Colision can be detected when two object enters the same position, in this example when the bird collide with a candy it creates a particle animations.",
                frame: true,
              )),
            if (id == 2)
              SectionContainer(
                  child: DetailSection(
                      imageUrl: 'assets/images/example_2_details/example_2.png',
                      title: "Responsive Layout",
                      text:
                          "The layout can be responsive like for this game. It fits for desktop and web apps as well as mobile screens.")),
            if (id == 3)
              SectionContainer(
                  child: DetailSection(
                      imageUrl: 'assets/images/example_3_details/example_3.png',
                      title: "Responsive Layout",
                      text:
                          "A game engine provides options for creating animations. Colision can be detected when two object enters the same position, in this example when the bird collide with a candy it creates a particle animations.", wide: true,)),
            if (id == 3)
              SectionContainer(
                  child: DetailSection(
                      imageUrl: 'assets/images/example_3_details/button.png',
                      title: "Third party authentication",
                      text:
                          "A game engine provides options for creating animations. Colision can be detected when two object enters the same position, in this example when the bird collide with a candy it creates a particle animations.", wide: true,)),
            if (id == 3)
              SectionContainer(
                  child: DetailSection(
                      imageUrl: 'assets/images/example_3_details/profile2.png',
                      title: "Profile",
                      text:
                          "A game engine provides options for creating animations. Colision can be detected when two object enters the same position, in this example when the bird collide with a candy it creates a particle animations.", wide: true,)),
          ],
        ),
      ),
    );
  }
}
