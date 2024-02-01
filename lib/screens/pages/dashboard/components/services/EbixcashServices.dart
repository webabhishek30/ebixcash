import 'package:flutter/material.dart';

import '../../../../../components/icons/gradientIcon/purpleGradientIcon.dart';

class EbixCashServices extends StatelessWidget {
  const EbixCashServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            blurRadius: 25,
            color: Color.fromRGBO(0, 0, 0, 0.25)
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PurpleGradientIcon(
            icon: "assets/images/send_money.png",
            title: "Send Money",
            btnFunc: (){
              print("sendMoney");
            },
          ),
          PurpleGradientIcon(
            icon: "assets/images/recharge_bill_pay.png",
            title: "Recharge & Bill Pay",
            btnFunc: (){
              print("recharge_bill_pay");
            },
          ),
          PurpleGradientIcon(
            icon: "assets/images/forex.png",
            title: "Forex",
            btnFunc: (){
              print("forex");
            },
          ),
          PurpleGradientIcon(
            icon: "assets/images/prepaid_card.png",
            title: "Prepaid & Gift Card",
            btnFunc: (){
              print("prepaid card");
            },
          )
        ],
      ),
    );
  }
}
