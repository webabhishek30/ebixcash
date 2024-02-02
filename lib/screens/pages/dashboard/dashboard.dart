import 'package:ebixcash/screens/pages/dashboard/components/services/EbixcashServices.dart';
import 'package:ebixcash/screens/pages/dashboard/components/travelOffer/TravelOffer.dart';
import 'package:ebixcash/screens/pages/dashboard/components/walletBalance/walletBalance.dart';
import 'package:flutter/material.dart';

import '../../../components/drawer/appDrawer.dart';
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
              onPressed: () {},
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
