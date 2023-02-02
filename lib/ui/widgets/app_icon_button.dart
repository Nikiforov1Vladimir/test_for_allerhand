import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppIconButton extends StatelessWidget {

  final String icon;
  final double? iconSize;
  final VoidCallback onPressed;

  const AppIconButton({Key? key, required this.icon, required this.onPressed, this.iconSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: IconButton(
          onPressed: onPressed,
          icon: SvgPicture.asset(
            icon,
            width: iconSize ?? 30,
            height: iconSize ?? 30,
          )
      ),
    );
  }
}
