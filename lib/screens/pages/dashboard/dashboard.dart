import 'package:ebixcash/screens/pages/dashboard/components/services/EbixcashServices.dart';
import 'package:ebixcash/screens/pages/dashboard/components/travelOffer/TravelOffer.dart';
import 'package:ebixcash/screens/pages/dashboard/components/walletBalance/walletBalance.dart';
import 'package:flutter/material.dart';

import '../../../components/drawer/appDrawer.dart';
import 'components/appUpdate/appUpdate.dart';
import 'components/askADoctor/AskADoctor.dart';
import 'components/insurance/InsuranceComponent.dart';
import 'components/rechargeBillPayment/rechargeBillPayment.dart';
import 'components/travelBooking/TravelBooking.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  


  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () {
      showDialog(context: context, builder: (BuildContext context){
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
          ),
          contentPadding: const EdgeInsets.all(40),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Congratulations! You are eligible to get EbixCash card linked to your account.",
                textAlign: TextAlign.center,
                style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                fontFamily: "Montserrat"
              ),),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 46,
                    width: 108,
                    child: TextButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        child: const Text("Later", style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 14,
                            fontWeight: FontWeight.w500
                        ))
                    ),
                  ),
                  SizedBox(
                    height: 46,
                    width: 136,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(23)
                                )
                            ),
                            backgroundColor: const MaterialStatePropertyAll(
                                Color.fromRGBO(185, 26, 129, 1)
                            )
                        ),
                        onPressed: (){
                          Navigator.pushNamed(context, "/ebixcashCard");
                        },
                        child: const Text("Get It", style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 14,
                            fontWeight: FontWeight.w500
                        ),)
                    )
                  ),
                ],
              )
            ],
          ),
        );
      });
    });

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset("assets/images/logo_big.png", width: 100, color: Colors.white),
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
            scaffoldKey.currentState!.openDrawer();
          },
          icon: const Icon(
              Icons.menu,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "/notifications");
              },
              icon: const Icon(
                  Icons.notifications_outlined,
                  color: Colors.white
              )
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
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
              const WalletBalance(),
              const SizedBox(
                height: 10,
              ),
              const EbixCashServices(),
              const SizedBox(
                height: 25,
              ),
              const AppUpdate(),
              const SizedBox(
                height: 25,
              ),
              const RechargeAndBillPayment(),
              const SizedBox(
                height: 25,
              ),
              const InsuranceComponent(),
              const SizedBox(
                height: 30,
              ),
              const TravelBookingComponent(),
              const SizedBox(
                height: 30,
              ),
              const TravelOffer(),
              const SizedBox(
                height: 30,
              ),
              AskADoctor(),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
      drawer: const AppDrawer()
    );
  }
}
