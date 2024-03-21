import 'package:flutter/material.dart';

class BankAccountScreen extends StatefulWidget {
  const BankAccountScreen({super.key});

  @override
  State<BankAccountScreen> createState() => _BankAccountScreenState();
}

class _BankAccountScreenState extends State<BankAccountScreen> {

  List bankAccountList = [
    {
      "bankName" : "Axis Bank 4255",
      "bankAccountLogo" : "assets/images/axisbank.png",
      "bankAccountType" : "Savings Account"
    },
    {
      "bankName" : "Bank of Baroda 8527",
      "bankAccountLogo" : "assets/images/bankOfBaroda.png",
      "bankAccountType" : "Savings Account"
    },
    {
      "bankName" : "HDFC Bank 3011",
      "bankAccountLogo" : "assets/images/hdfc.png",
      "bankAccountType" : "Current Account"
    },
    {
      "bankName" : "ICICI Bank 2527",
      "bankAccountLogo" : "assets/images/icici.png",
      "bankAccountType" : "Savings Account"
    }
  ];

  @override
  Widget build(BuildContext context) {
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
        title: const Text("Bank Accounts", style: TextStyle(
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
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView.separated(
            shrinkWrap: true,
            itemCount: bankAccountList.length,
            itemBuilder: (BuildContext context, int index){
              return ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Container(
                  width: 50,
                  height: 50,
                  child: Image.asset(bankAccountList[index]['bankAccountLogo']),
                ),
                title: Text(bankAccountList[index]['bankName'], style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Montserrat"
                ),),
                subtitle: Text(bankAccountList[index]['bankAccountType'], style: const TextStyle(
                    fontSize: 10,
                    fontFamily: "Montserrat"
                )),
                trailing: IconButton(
                    onPressed: (){

                    },
                    icon: const Icon(
                      Icons.more_vert,
                      color: Color.fromRGBO(72, 68, 68, 1),
                    )
                ),
              );
            },
          separatorBuilder: (BuildContext context, int index){
              return const Divider(
                color: Color.fromRGBO(0, 0, 0, 0.5),
              );
          },

        ),
      ),
    );
  }
}
