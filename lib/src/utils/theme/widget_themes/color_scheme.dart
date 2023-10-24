import 'package:flutter/material.dart';

ColorScheme lightScheme = ColorScheme.fromSeed(
  seedColor: Colors.red,
  brightness: Brightness.light,

  secondaryContainer: const Color(0xFFebe5e5),
  tertiary: const Color(0xFFfad9d8),
  tertiaryContainer: const Color(0xFFf7bfbe),
);

ColorScheme darkScheme = ColorScheme.fromSeed(
  seedColor: Colors.red,
  brightness: Brightness.dark,

  secondaryContainer: const Color(0xFF670f22),
  tertiary: const Color(0xFF9a0526),
  tertiaryContainer: const Color(0xFF6a041a),
);