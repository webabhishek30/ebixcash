import 'package:flutter/material.dart';

class AskADoctor extends StatelessWidget {
  AskADoctor({super.key});

  final Shader linearGradient = const LinearGradient(
    colors: <Color>[Color(0xffDA44bb), Color(0xff8921aa)],
  ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 145,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            blurRadius: 25,
            color: Color.fromRGBO(0, 0, 0, 0.1)
          )
        ],
        borderRadius: BorderRadius.circular(15),
        image: const DecorationImage(
            alignment: Alignment.bottomCenter,
            fit: BoxFit.contain,
            image: AssetImage(
                "assets/images/ask_a_doctor_bg.png")
        )
      ),
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(
                colors: [
                  Color.fromRGBO(102, 84, 159, 1),
                  Color.fromRGBO(189, 34, 135, 1)
                ]
              )
            ),
            child: Center(
              child: Image.asset("assets/images/doctor_icon.png"),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Ask a Doctor',
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w800,
                    fontFamily: "Montserrat",
                    foreground: Paint()..shader = linearGradient),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                  "Get your health \nquestion answered",
                style: TextStyle(
                  color: Color.fromRGBO(112, 112, 112, 1),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
