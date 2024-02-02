import 'package:flutter/material.dart';

class UpgradeWallet extends StatefulWidget {
  const UpgradeWallet({super.key});

  @override
  State<UpgradeWallet> createState() => _UpgradeWalletState();
}

class _UpgradeWalletState extends State<UpgradeWallet> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        // TODO
        print("Upgrade wallet");
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 38,
        width: 198,
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
              "Upgrade Wallet",
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
