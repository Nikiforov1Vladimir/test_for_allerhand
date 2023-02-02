import 'package:flutter/material.dart';
import 'package:test_allerhands/ui/widgets/app_icon_button.dart';
import 'package:test_allerhands/utils/constants/colors.dart';
import 'package:test_allerhands/utils/constants/icons.dart';

class PauseState extends StatelessWidget {

  final VoidCallback onPressed;

  const PauseState({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black,
              Colors.transparent,
              Colors.black
            ]
          )
      ),
      child: Center(
        child: AppIconButton(
            icon: AppIcons.play,
            iconSize: 60,
            onPressed: onPressed
        ),
      ),
    );
  }
}
