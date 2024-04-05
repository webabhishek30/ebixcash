import 'package:flutter/material.dart';

class SuccessfulTransactionScreen extends StatefulWidget {

  String title;
  String subTitle;
  String accountNo;

  SuccessfulTransactionScreen({ required this.title, required this.subTitle, required this.accountNo, super.key});

  @override
  State<SuccessfulTransactionScreen> createState() => _SuccessfulTransactionScreenState();
}

class _SuccessfulTransactionScreenState extends State<SuccessfulTransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height - 40,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/checkmark.png"),
            const SizedBox(
              height: 50,
            ),
            Text(widget.title, textAlign: TextAlign.center, style: const TextStyle(
              fontFamily: "Montserrat",
              fontSize: 23,
              fontWeight: FontWeight.w700
            ),),
            const SizedBox(
              height: 10,
            ),
            Text(widget.subTitle, style: const TextStyle(
              fontFamily: "Montserrat",
              fontSize: 14,
              color: Color.fromRGBO(112, 112, 112, 1),

            ),),
            const SizedBox(
              height: 10,
            ),
            Text(widget.accountNo, style: const TextStyle(
              fontFamily: "Montserrat",
              fontSize: 14,
              color: Color.fromRGBO(112, 112, 112, 1),

            ),),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 274,
              height: 46,
              child: ElevatedButton(
                  style: ButtonStyle(
                    elevation: const MaterialStatePropertyAll(0),
                    shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)
                        )
                    ),
                    backgroundColor: const MaterialStatePropertyAll(
                      Color.fromRGBO(185, 26, 129, 1)
                    )
                  ),
                  onPressed: (){
                    Navigator.pushNamed(context, "/myTransaction");
                  },
                  child: const Text("View Transaction Details", style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Montserrat",
                    color: Colors.white
                  ),)
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: (){
                  Navigator.pushNamed(context, "/dashboard");
                },
                child: const Text("Go to dashboard", style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 14
                ),)
            )
          ],
        ),
      )
    );
  }
}
