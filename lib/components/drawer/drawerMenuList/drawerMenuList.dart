import 'package:flutter/material.dart';

class DrawerMenuList extends StatelessWidget {
  DrawerMenuList({super.key});

  List menuList = [
    {
      "title" : "My Transactions",
      "subtitle" : "Track all your Financial Transactions",
      "icon" : "assets/images/transactions.png",
      "pageName": "/myTransaction"
    },
    {
      "title" : "My Prepaid Cards",
      "subtitle" : "Add/Remove your cards",
      "icon" : "assets/images/prepaid_card2.png",

    },
    {
      "title" : "Saved Cards",
      "subtitle" : "Add/Remove your Credit/Debit cards",
      "icon" : "assets/images/prepaid_card2.png",
      "pageName": "/savedCards"
    },
    {
      "title" : "Bank Accounts",
      "subtitle" : "Add/Remove your Bank Account",
      "icon" : "assets/images/bank.png",
      "pageName": "/bankAccounts"
    },
    {
      "title" : "Add Beneficiary",
      "subtitle" : "Add/Remove beneficiary",
      "icon" : "assets/images/beneficiary.png",
    },
    {
      "title" : "KYC",
      "subtitle" : "Complete documentation",
      "icon" : "assets/images/kyc.png",

    },
    {
      "title" : "Help & Support",
      "subtitle" : "Ask/Raise querry  to EbixCash Support",
      "icon" : "assets/images/help_support.png",
      "pageName": "/helpSupport"
    },
    {
      "title" : "Complaint Status",
      "subtitle" : "Check status of your queries",
      "icon" : "assets/images/complaint_status.png",

    },
    {
      "title" : "Security & Privacy",
      "subtitle" : "Know EbixCash Privacy & Policy",
      "icon" : "assets/images/security_privacy.png",
    },
    {
      "title" : "About EbixCash",
      "subtitle" : "Version released till now",
      "icon" : "assets/images/EbixCash_ico.png",

    },
    {
      "title" : "Rate Us",
      "subtitle" : "Rate your experience",
      "icon" : "assets/images/star.png",
      "pageName": "/rateUs"
    },
    {
      "title" : "Logout",
      "subtitle" : "Logout from EbixCash App",
      "icon" : "assets/images/logout.png",

    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: menuList.length,
      separatorBuilder: (BuildContext context, int index){
        return Divider(
          height: 1,
        );
      },
      itemBuilder: (BuildContext context, int index){
        return ListTile(
          onTap: (){
            Navigator.pushNamed(context, menuList[index]["pageName"]);
          },
          tileColor: Color.fromRGBO(246, 246, 246, 1),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)
          ),
          leading: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(252, 196, 232, 1),
                      Color.fromRGBO(255, 255, 255, 1),
                    ]
                )
            ),
            child: Center(child: Image.asset(menuList[index]["icon"])),
          ),
          title: Text(menuList[index]["title"], style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            fontFamily: "Montserrat",
            color: Colors.black
          ),),
          subtitle: Text(menuList[index]["subtitle"], style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w200,
            color: Color.fromRGBO(148, 148, 148, 1)
          ),),
          trailing: const Icon(Icons.keyboard_arrow_right_sharp),
        );
      }

    );
  }
}
