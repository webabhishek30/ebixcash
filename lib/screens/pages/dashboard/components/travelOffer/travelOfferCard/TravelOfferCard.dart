import 'package:flutter/material.dart';

class TravelOfferCard extends StatelessWidget {

  String offerTitle;
  String offerCaption;
  String offerCode;

  TravelOfferCard({required this.offerCaption, required this.offerCode, required this.offerTitle, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: const Color.fromRGBO(149, 52, 114, 0.5),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(
              colors: [
                Color(0xff66549F),
                Color(0xffBD2287),
              ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                offerTitle,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontFamily: "Montserrat"
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
                offerCaption,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  fontFamily: "Montserrat"
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            RichText(
                text: TextSpan(
                    style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontFamily: "Montserrat"
                    ),
                  children: [
                    const TextSpan(
                      text: "Use Code : ",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: offerCode,
                      style: const TextStyle(
                          fontWeight: FontWeight.w700,
                      ),
                    )
                  ]
                )
            )
          ],
        ),
      ),
    );
  }
}
