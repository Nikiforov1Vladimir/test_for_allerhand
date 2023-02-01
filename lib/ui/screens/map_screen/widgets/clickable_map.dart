import 'package:flutter/material.dart';

class ClickableMap extends StatelessWidget {
  final String mapImage;
  final VoidCallback onPressed;

  const ClickableMap(
      {Key? key, required this.mapImage, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(mapImage),
        ),
      ),
    );
  }
}
