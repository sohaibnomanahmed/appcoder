// class FormFactor {
//   static double desktop = 900;
//   static double tablet = 600;
//   static double handset = 300;
// }

// enum ScreenSize { Small, Normal, Large, ExtraLarge }

// ScreenSize getSize(BuildContext context) {
//   double deviceWidth = MediaQuery.of(context).size.shortestSide;
//   if (deviceWidth > 900) return ScreenSize.ExtraLarge;
//   if (deviceWidth > 600) return ScreenSize.Large;
//   if (deviceWidth > 300) return ScreenSize.Normal;
//   return ScreenSize.Small;
// }

// class Insets {
//   static const double xsmall = 3;
//   static const double small = 4;
//   static const double medium = 5;
//   static const double large = 10;
//   static const double extraLarge = 20;
//   // etc
// }

// class Fonts {
//   static const String raleway = 'Raleway';
//   // etc
// }

// class TextStyles {
//   static const TextStyle raleway = const TextStyle(
//     fontFamily: Fonts.raleway,
//   );
//   static TextStyle buttonText1 =
//       TextStyle(fontWeight: FontWeight.bold, fontSize: 14);
//   static TextStyle buttonText2 =
//       TextStyle(fontWeight: FontWeight.normal, fontSize: 11);
//   static TextStyle h1 = TextStyle(fontWeight: FontWeight.bold, fontSize: 22);
//   static TextStyle h2 = TextStyle(fontWeight: FontWeight.bold, fontSize: 16);
//   static late TextStyle body1 = raleway.copyWith(color: Color(0xFF42A5F5));
//   // etc
// }

// // Other componenet that can be made this way is 
// // Animation timings
// // Sizes and breakpoints
// // Insets and paddings
// // Corner radius
// // Shadows
// // Strokes
// // Font families, sizes, and styles