import 'package:ebixcash/screens/pages/dashboard/addMoney/addMoneyToWallet/successfulTransaction/successfulTransaction.dart';
import 'package:flutter/material.dart';

class AddMoneyToWallet extends StatefulWidget {

  Map<String, dynamic>? selectedDebitForm;

  AddMoneyToWallet({ required this.selectedDebitForm, super.key});

  @override
  State<AddMoneyToWallet> createState() => _AddMoneyToWalletState();
}

class _AddMoneyToWalletState extends State<AddMoneyToWallet> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.selectedDebitForm?['debitType']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/appbar_bg.jpg'),
                  fit: BoxFit.fill
              )
          ),
        ),
        leadingWidth: 110,
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
            icon: const Icon(Icons.arrow_back_ios_new_rounded)),
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              overlayColor: const MaterialStatePropertyAll(
                  Colors.transparent
              ),
              child: const Text("Cancel", style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20
              ),),
            )
          ],
        ),

        actions: [
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, "/dashboard");
            }, icon: Image.asset("assets/images/dashboard.png", color: Colors.white,), )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const ScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/top_background.png"),
                  fit: BoxFit.contain,
                  alignment: Alignment.topCenter
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text("Enter your card verification code", style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Montserrat",
                        color: Colors.white
                    ),),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline, size: 14, color: Colors.white,),
                        SizedBox(
                          width: 5,
                        ),
                        Text("card details are saved securely", style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Montserrat",
                          color: Colors.white
                        ),)
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      TextFormField(
                        initialValue: "9874  3210  4789  1234",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Montserrat"
                        ),
                        decoration: InputDecoration(
                          labelText: "Card Number",
                          suffixIcon: Image.asset(widget.selectedDebitForm?['debitTypeLogo'], width: 30,),
                          labelStyle: const TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 14,
                            color: Color.fromRGBO(194, 194, 194, 1)
                          )
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(child: TextFormField(
                            initialValue: "05/24",
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Montserrat"
                            ),
                            decoration: const InputDecoration(
                                labelText: "Valid/Thru",
                                labelStyle: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 14,
                                    color: Color.fromRGBO(194, 194, 194, 1)
                                )
                            ),
                          ),),
                          const SizedBox(
                            width: 30,
                          ),
                          Expanded(child: TextFormField(
                            initialValue: "***",
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Montserrat"
                            ),
                            decoration: const InputDecoration(
                                labelText: "CVV",
                                labelStyle: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 14,
                                    color: Color.fromRGBO(194, 194, 194, 1)
                                )
                            ),
                          ),),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        initialValue: "Prawin Jha",
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Montserrat"
                        ),
                        decoration: const InputDecoration(
                            labelText: "Name on Card",
                            labelStyle: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 14,
                                color: Color.fromRGBO(194, 194, 194, 1)
                            )
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 65,
        child: ElevatedButton(
            style: const ButtonStyle(
                shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero
                    )
                ),
                backgroundColor: MaterialStatePropertyAll(
                    Color.fromRGBO(185, 26, 129, 1)
                )
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SuccessfulTransactionScreen(
                title: "You've added 500 INR to your account.",
                subTitle: "Amount is deducted from MasterCard",
                accountNo: "9874  ****  ****  ***4",
              )));

            },
            child: Text(
              "Continue".toUpperCase(),
              style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  fontFamily: "Montserrat"
              ),
            )
        ),
      ),
    );
  }
}
