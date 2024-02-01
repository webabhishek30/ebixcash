import 'package:flutter/material.dart';

import '../../../../../components/buttons/whiteButtonComponent.dart';

class WalletBalance extends StatefulWidget {
  const WalletBalance({super.key});

  @override
  State<WalletBalance> createState() => _WalletBalanceState();
}

class _WalletBalanceState extends State<WalletBalance> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
                text: const TextSpan(
                  text: "My Balance : ",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Montserrat',
                    fontSize: 14
                  ),
                  children: [
                    TextSpan(
                      text: "Rs. 1,00,000.00",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                      ),
                    )
                  ]
                )
            ),
            WhiteButtonComponent(
              title: "Add Money",
              icon: "+",
              btnFunc: (){

              },
            )
          ],
        ),
        const Padding(
            padding: EdgeInsets.only(top: 10)
        ),
        const Divider(
          color: Color.fromRGBO(244, 140, 207, 1),
        )
      ],
    );
  }
}
