import 'package:flutter/material.dart';

final Color customBlueColor = Color(0xFF0062FF);


MaterialColor createMaterialColor(Color color) {
  List<Color> swatchColors = [
    color,
    color.withOpacity(0.8), // You can add shades or opacities as needed
    color.withOpacity(0.6),
    color.withOpacity(0.4),
    color.withOpacity(0.2),
    color.withOpacity(0.1),
  ];

  return MaterialColor(color.value, {
    50: swatchColors[0],
    100: swatchColors[1],
    200: swatchColors[2],
    300: swatchColors[3],
    400: swatchColors[4],
    500: swatchColors[5],
    600: swatchColors[0], // You can adjust these values to match your preferences
    700: swatchColors[1],
    800: swatchColors[2],
    900: swatchColors[3],
  });
}

final MaterialColor customBlueMaterialColor = createMaterialColor(customBlueColor);
