import 'package:flutter/material.dart';

class StrollPngIcon extends StatelessWidget {
  final String assetPath;
  final double size;

  const StrollPngIcon({
    super.key,
    required this.assetPath,
    this.size = 24,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      assetPath,
      fit: BoxFit.contain,
      height: size,
      width: size,
    );
  }
}
