import 'dart:ui';

import 'package:flutter/material.dart';

class PurpleGradientIcon extends StatelessWidget {

  String icon;
  String title;
  Function btnFunc;

  PurpleGradientIcon({required this.icon, required this.title, required this.btnFunc,  super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => btnFunc(),
      child: SizedBox(
        width: 60,
        child: Column(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: const LinearGradient(
                    colors: [
                      Color.fromRGBO(189, 34, 135, 1),
                      Color.fromRGBO(102, 84, 159, 1),
                    ],
                    transform: GradientRotation(-70)
                )
              ),
              child: Image.asset(icon, width: 45),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
                title,
              textAlign: TextAlign.center,

              maxLines: 2,
              style: const TextStyle(
                color: Color.fromRGBO(112, 112, 112, 1),
                fontSize: 12,
                height: 1.3,
                fontWeight: FontWeight.w400,
                fontFamily: 'Montserrat',
              ),
            )
          ],
        ),
      ),
    );
  }
}
