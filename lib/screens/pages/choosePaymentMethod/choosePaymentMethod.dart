import 'package:flutter/material.dart';
import 'package:mobkit_dashed_border/mobkit_dashed_border.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

import '../../../components/buttons/purpleButtonComponent.dart';
import '../dashboard/addMoney/addMoneyToWallet/successfulTransaction/successfulTransaction.dart';

class ChoosePaymentMethodScreen extends StatefulWidget {

  Map<String, dynamic>? paymentFor;
  String title;
  String? amount;

  ChoosePaymentMethodScreen({required this.title, this.paymentFor, this.amount, super.key});

  @override
  State<ChoosePaymentMethodScreen> createState() => _ChoosePaymentMethodScreenState();
}

class _ChoosePaymentMethodScreenState extends State<ChoosePaymentMethodScreen> {

  int selectedDebitIndex = -1;

  OtpFieldController otpController = OtpFieldController();

  List debitFrom = [
    {
      "debitType" : "EbixCash Wallet",
      "debitTypeLogo" : "assets/images/logo.png",
      "debitTypeIcon" : "assets/images/wallet.png",
      "debitTypeNo" : "Available Balance: ₹0",
      "debitValue" : false,
      "debitId" : 1,
    },
    {
      "debitType" : "Credit Card",
      "debitTypeLogo" : "assets/images/mastercard.png",
      "debitTypeIcon" : "assets/images/card.png",
      "debitTypeNo" : "**** **** **** 1234",
      "debitValue" : false,
      "debitId" : 1,
    },
    {
      "debitType" : "Debit Card",
      "debitTypeLogo" : "assets/images/visa_small.png",
      "debitTypeIcon" : "assets/images/card.png",
      "debitTypeNo" : "**** **** **** 5678",
      "debitValue" : false,
      "debitId" : 2,
    },
    {
      "debitType" : "ICICI Bank",
      "debitTypeLogo" : "assets/images/icici_bank_logo.png",
      "debitTypeIcon" : "assets/images/bank_filled.png",
      "debitTypeNo" : "**** **** **** 9012",
      "debitValue" : false,
      "debitId" : 3,
    }
  ];

  @override
  Widget build(BuildContext context) {
    String amount = "";
    switch(widget.title){
      case "Mobile Recharge" :
        amount = widget.paymentFor!["packageAmount"];
        break;
      case "Buy Forex" :
        amount = widget.paymentFor!["amount"];
        break;
      case "DTH Recharge" :
        amount = widget.amount!;
        break;
      case "Fastag Recharge" :
        amount = widget.amount!;
        break;
      case "Pay Water Bill" :
        amount = widget.amount!;
        break;
      case "Pay Electricity Bill" :
        amount = widget.amount!;
        break;
      case "Pay Pipped Gas Bill" :
        amount = widget.amount!;
        break;
      case "Pay Broadband Bill" :
        amount = widget.amount!;
        break;
      case "Pay Cable TV Bill" :
        amount = widget.amount!;
        break;
      case "Pay LPG Bill" :
        amount = widget.amount!;
        break;
      case "Pay Landline Bill" :
        amount = widget.amount!;
        break;


    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )
        ),
        title: Text(widget.title, style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontFamily: "Montserrat",
            color: Colors.black
        ),),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, "/dashboard");
            }, icon: Image.asset("assets/images/dashboard.png"), color: Colors.black,)
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Card(
                elevation: 0,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: ListTile(
                    leading: Container(
                      width: 50,
                      height: 50,
                      child: Image.asset("assets/images/reliance_jio.png"),
                    ),
                    title: const Text("Total Payable", style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 16,
                      color: Color.fromRGBO(1, 1, 1, 1)
                    ),),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text("₹ $amount", style: const TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(1, 1, 1, 1)
                      )),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Color.fromRGBO(112, 112, 112, 1)
                          )
                      )
                  ),
                  child: const Text("Debit From", style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                  ),),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index){
                    return InkWell(
                      onTap: (){
                        setState(() {
                          selectedDebitIndex = index;
                        });

                      },
                      child: ListTile(
                        tileColor: const Color.fromRGBO(246, 246, 246, 1),
                        selectedTileColor: const Color.fromRGBO(255, 241, 241, 1),
                        selectedColor: Colors.black,
                        selected: selectedDebitIndex == index,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: BorderSide(
                                color: selectedDebitIndex == index ? const Color.fromRGBO(185, 26, 129, 1) : const Color.fromRGBO(246, 246, 246, 1)
                            )
                        ),
                        leading: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Image.asset(debitFrom[index]["debitTypeIcon"]),
                        ),
                        trailing: Image.asset(debitFrom[index]["debitTypeLogo"], width: 80,),

                        title: Text(debitFrom[index]["debitType"], style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Montserrat"
                        ),),
                        subtitle: Row(
                          children: [
                            const Icon(Icons.lock_outline, size: 13,),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(debitFrom[index]["debitTypeNo"], style: const TextStyle(
                                fontSize: 13,
                                fontFamily: "Montserrat",
                                color: Color.fromRGBO(148, 148, 148, 1)
                            ),)
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index){
                    return const SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: debitFrom.length),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: const DashedBorder(
                        dashLength: 5,
                        strokeCap: StrokeCap.round,
                        top: BorderSide(color: Color.fromRGBO(150, 150, 150, 1), width: 1),
                        bottom: BorderSide(color: Color.fromRGBO(150, 150, 150, 1), width: 1),
                        right: BorderSide(color: Color.fromRGBO(150, 150, 150, 1), width: 1),
                        left: BorderSide(color: Color.fromRGBO(150, 150, 150, 1), width: 1)
                    )
                ),
                child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Colors.white
                      ),
                      elevation: MaterialStatePropertyAll(0),
                    ),
                    onPressed: (){

                    },
                    child: const Text("+  Add new method", style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 16,
                        color: Colors.black
                    ),)
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 65,
        width: MediaQuery.of(context).size.width,
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
              showDialog(context: context, builder: (BuildContext context){
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                  contentPadding: const EdgeInsets.all(30),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Verification', style: TextStyle(fontFamily: 'Montserrat', fontSize: 23, fontWeight: FontWeight.w700),),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text('Enter 4 digit number that sent to',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(112, 112, 112, 1),
                            height: 1.5
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const Text("+91 9910686363", style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(112, 112, 112, 1),
                          height: 1.5
                      ),
                        textAlign: TextAlign.center,),
                      const SizedBox(
                        height: 10,
                      ),
                      OTPTextField(
                          otpFieldStyle: OtpFieldStyle(
                              focusBorderColor: const Color(0xffC64398)
                          ),
                          controller: otpController,
                          length: 4,
                          width: MediaQuery.of(context).size.width,
                          textFieldAlignment: MainAxisAlignment.spaceAround,
                          fieldWidth: 45,
                          fieldStyle: FieldStyle.underline,
                          outlineBorderRadius: 15,
                          style: TextStyle(fontSize: 17),
                          onChanged: (pin) {
                            print("Changed: " + pin);
                          },
                          onCompleted: (pin) {
                            print("Completed: " + pin);
                          }),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: PurpleButtonComponent(title: "Verify Code", icon: "assets/images/white_tick.png", btnFunc: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SuccessfulTransactionScreen(
                            title: "You've successfully recharged your mobile",
                            subTitle: "Amount is deducted from ICICI Bank",
                            accountNo: "9874  ****  ****  ***2",
                          )));
                        },),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextButton(
                          onPressed: (){},
                          child: const Text("Re-send code in 0:30", style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(48, 183, 231, 1)
                          ),)
                      )
                    ],
                  ),
                );
              });
            },
            child: Text(
              "Pay ₹ $amount".toUpperCase(),
              style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  fontFamily: "Montserrat",
                  color: Colors.white
              ),
            )
        ),
      ),
    );
  }
}
