import 'package:flutter/material.dart';

class PurpleButtonComponent extends StatelessWidget {
  String title;
  String? icon;
  Function btnFunc;

  PurpleButtonComponent(
      {required this.title, this.icon, required this.btnFunc, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          height: 50,
          decoration: const BoxDecoration(
              color: Color.fromRGBO(185, 26, 129, 1),
              borderRadius: BorderRadius.all(Radius.elliptical(23, 23))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(icon!),
              const SizedBox(
                width: 5,
              ),
              Text(
                title,
                style: const TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              )
            ],
          )),
      onTap: () {
        btnFunc();
      },
    );
  }
}
