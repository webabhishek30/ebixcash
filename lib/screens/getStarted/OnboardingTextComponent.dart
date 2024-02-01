import 'package:flutter/material.dart';

class OnBoardingTextComponent extends StatefulWidget {

  String title;
  String description;

  OnBoardingTextComponent({required this.title, required this.description, super.key});

  @override
  State<OnBoardingTextComponent> createState() => _OnBoardingTextComponentState();
}

class _OnBoardingTextComponentState extends State<OnBoardingTextComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
            height: 300,
          ),
          Text(
            widget.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Colors.black,
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Montserrat'
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            widget.description,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Color.fromRGBO(112, 112, 112, 1),
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
                height:  1.5,
                fontFamily: 'Montserrat'
            ),
          ),
        ],
      ),
    );
  }
}
