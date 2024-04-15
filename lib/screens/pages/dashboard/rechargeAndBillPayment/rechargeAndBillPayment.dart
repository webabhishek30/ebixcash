import 'package:flutter/material.dart';

import '../../../../components/icons/gradientIcon/purpleGradientIcon.dart';
import '../../../../components/icons/solidColorIcon/solidColorIcon.dart';

class RechargeAndBillPaymentScreen extends StatefulWidget {
  const RechargeAndBillPaymentScreen({super.key});

  @override
  State<RechargeAndBillPaymentScreen> createState() => _RechargeAndBillPaymentScreenState();
}

class _RechargeAndBillPaymentScreenState extends State<RechargeAndBillPaymentScreen> {

  List utilitiesBillPayments = [
    {
      "title" : "Electricity",
      "icon" : "assets/images/electricity.png",
      "pageName" : "/electricityBill"
    },
    {
      "title" : "Water",
      "icon" : "assets/images/water.png",
      "pageName" : "/waterBill"
    },
    {
      "title" : "Piped Gas",
      "icon" : "assets/images/gas.png",
      "pageName" : "/pipedGas"
    },
    {
      "title" : "Broadband",
      "icon" : "assets/images/broadband.png",
      "pageName" : "/broadBand"
    },
    {
      "title" : "Education \n Fee",
      "icon" : "assets/images/education_fee.png",
      "pageName" : ""
    },
    {
      "title" : "Cable TV",
      "icon" : "assets/images/tv.png",
      "pageName" : "/cableTv"
    },
    {
      "title" : "LPG",
      "icon" : "assets/images/gas.png",
      "pageName" : "/lpg"
    },
    {
      "title" : "Landline",
      "icon" : "assets/images/landline.png",
      "pageName" : "/landline"
    },
  ];

  List otherServices = [
    {
      "title" : "Pay Credit \n Card Bill",
      "icon" : "assets/images/credit_card.png",
      "pageName" : ""
    },
    {
      "title" : "Insurance \n Payment",
      "icon" : "assets/images/insurance.png",
      "pageName" : ""
    },
    {
      "title" : "Clubs & \n Associations ",
      "icon" : "assets/images/club.png",
      "pageName" : ""
    },
    {
      "title" : "Municipal \n Tax",
      "icon" : "assets/images/municipal_tax.png",
      "pageName" : ""
    },
    {
      "title" : "Hospital &  \n Pathology ",
      "icon" : "assets/images/hospital.png",
      "pageName" : ""
    },
    {
      "title" : "Subscriptions",
      "icon" : "assets/images/subscription.png",
      "pageName" : ""
    },
    {
      "title" : "Housing \n Society",
      "icon" : "assets/images/society.png",
      "pageName" : ""
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Column(
          children: [
            Text(
                "Recharge & Bill Payment",
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                )
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Manage all your bills under one roof",
              style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.white
              ),

            ),
          ],
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/appbar_bg.jpg'),
                  fit: BoxFit.fill
              )
          ),
        ),
        leading: IconButton(
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
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

            children: [

              const SizedBox(
                height: 20,
              ),
              Container(
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
                      icon: "assets/images/prepaid_mobile.png",
                      title: "Prepaid Mobile",
                      btnFunc: (){
                        Navigator.pushNamed(context, '/prepaidMobileRecharge');
                      },
                    ),
                    PurpleGradientIcon(
                      icon: "assets/images/postpaid_mobile.png",
                      title: "Postpaid Mobile",
                      btnFunc: (){
                        Navigator.pushNamed(context, "/rechargeAndBillPayment");
                      },
                    ),
                    PurpleGradientIcon(
                      icon: "assets/images/dth_recharge.png",
                      title: "DTH Recharge",
                      btnFunc: (){
                        Navigator.pushNamed(context, "/dthRecharge");
                      },
                    ),
                    PurpleGradientIcon(
                      icon: "assets/images/fastag_recharge.png",
                      title: "FASTag Recharge",
                      btnFunc: (){
                        Navigator.pushNamed(context, "/fastagRecharge");
                      },
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text("Utilities Bill Payments", style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                    ),),
                  ),
                  Container(
                    width: 88,
                    height: 1,
                    color: const Color.fromRGBO(112, 112, 112, 1),
                  )
                ],
              ),

              const SizedBox(
                height: 20,
              ),
              GridView.count(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                crossAxisCount: 4,
                childAspectRatio: 0.7,
                children: List.generate(utilitiesBillPayments.length, (index) {
                  return SolidColorIcon(
                      icon: utilitiesBillPayments[index]["icon"],
                      title: utilitiesBillPayments[index]["title"],
                      btnFunc: (){
                        Navigator.pushNamed(context, utilitiesBillPayments[index]["pageName"]);
                      }
                  );
                }),
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text("Other Services", style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                    ),),
                  ),
                  Container(
                    width: 88,
                    height: 1,
                    color: const Color.fromRGBO(112, 112, 112, 1),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              GridView.count(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  crossAxisCount: 4,
                  childAspectRatio: 0.7,
                  children: List.generate(otherServices.length, (index) {
                    return SolidColorIcon(
                        icon: otherServices[index]["icon"],
                        title: otherServices[index]["title"],
                        btnFunc: (){
                          print(otherServices[index]["title"]);
                        }
                    );
                  }),
              ),

              const SizedBox(
                height: 20,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
