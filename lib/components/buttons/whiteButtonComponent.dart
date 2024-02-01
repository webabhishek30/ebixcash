import 'package:flutter/material.dart';

class WhiteButtonComponent extends StatelessWidget {
  String title;
  Function btnFunc;
  String? icon;

  WhiteButtonComponent({ required this.title, required this.btnFunc, this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          height: 28,
          decoration: const BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
              borderRadius: BorderRadius.all(Radius.elliptical(23, 23))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(icon!),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  title,
                  style: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(215, 69, 163, 1)),
                )
              ],
            ),
          )),
      onTap: () {
        btnFunc();
      },
    );
  }
}
