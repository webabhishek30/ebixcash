import 'package:ebixcash/components/drawer/createUpi/createUpi.dart';
import 'package:ebixcash/components/drawer/upgradeWallet/UpgradeWallet.dart';
import 'package:ebixcash/components/drawer/userInfo/UserInfo.dart';
import 'package:ebixcash/components/drawer/userQRCode/UserQRCode.dart';
import 'package:flutter/material.dart';

import 'drawerMenuList/drawerMenuList.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/appbar_bg.jpg'),
                  fit: BoxFit.fill
              )
          ),
        ),
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "/notifications");
              },
              icon: const Icon(
                  Icons.notifications_outlined,
                  color: Colors.white,
              )
          ),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "/profile");
              },
              icon: const Icon(
                  Icons.settings_outlined,
                  color: Colors.white,
              )
          )
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
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              UserInfo(),
              SizedBox(
                height: 60,
              ),
              UserQRCode(),
              SizedBox(
                height: 25,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      UpgradeWallet(),
                      CreateUpi()
                    ],
                  ),
              ),
              SizedBox(
                height: 25,
              ),
              DrawerMenuList()
            ],
          )
        ),
      ),
    );
  }
}
