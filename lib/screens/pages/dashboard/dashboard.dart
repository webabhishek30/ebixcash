import 'package:ebixcash/screens/pages/dashboard/components/services/EbixcashServices.dart';
import 'package:ebixcash/screens/pages/dashboard/components/walletBalance/walletBalance.dart';
import 'package:flutter/material.dart';

import '../../../components/drawer/appDrawer.dart';
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
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
          icon: const Icon(Icons.menu),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/top_background.png"),
                fit: BoxFit.contain,
                alignment: Alignment.topCenter
            )
          ),
          child: const Column(
            children: [
              WalletBalance(),
              SizedBox(
                height: 10,
              ),
              EbixCashServices(),
              SizedBox(
                height: 25,
              ),
              RechargeAndBillPayment(),
              SizedBox(
                height: 25,
              ),
              InsuranceComponent(),
              SizedBox(
                height: 30,
              ),
              TravelBookingComponent(),
              SizedBox(
                height: 200,
              ),
              Text("Hello"),
              SizedBox(
                height: 200,
              ),
            ],
          ),
        ),
      ),
      drawer: const AppDrawer()
    );
  }
}
