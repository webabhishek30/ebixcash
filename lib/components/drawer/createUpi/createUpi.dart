import 'package:flutter/material.dart';

class CreateUpi extends StatefulWidget {
  const CreateUpi({super.key});

  @override
  State<CreateUpi> createState() => _CreateUpiState();
}

class _CreateUpiState extends State<CreateUpi> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, "/createUpi");
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 38,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19),
          border: Border.all(
            color: const Color.fromRGBO(174, 32, 128, 1)
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/upgrade_wallet.png"),
            const SizedBox(
              width: 10,
            ),
            const Text(
              "Create Upi",
              style: TextStyle(
                color: Color.fromRGBO(174, 32, 128, 1),
                fontFamily: "Montserrat",
                fontSize: 14,
                fontWeight: FontWeight.w400
              ),
            )
          ],
        ),
      ),
    );
  }
}
