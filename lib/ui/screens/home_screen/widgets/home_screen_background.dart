import 'package:flutter/material.dart';

class HomeScreenBackground extends StatelessWidget {
  const HomeScreenBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Align(
            alignment: const Alignment(-1.8,0),
            child: Image.asset('assets/images/babylong_tower_2.png')
        ),

        Align(
            alignment: const Alignment(1.8,0),
            child: Image.asset('assets/images/babylong_tower_2.png')
        )

      ],
    );
  }
}
