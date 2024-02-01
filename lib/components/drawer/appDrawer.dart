import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width,
      child: ListView(
        children: [
          Stack(
            children: [
              Positioned(
                left: 0,
                right: 0,
                top: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.white, // Adjust the background color
                  child: Image.asset(
                    "assets/images/top_background.png",
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
              Column(
                children: [
                  AppBar(
                    toolbarHeight: 80,
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    centerTitle: true,
                    leading: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios_new_rounded),
                    ),
                    actions: [
                      IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_outlined)),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.settings_outlined))
                    ],
                  ),
                  SingleChildScrollView(
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      child: Column(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Colors.white),
                            ),
                            child: Stack(
                              clipBehavior: Clip.none,
                              alignment: Alignment.center,
                              children: [
                                Image.asset("assets/images/indian_flag.png"),
                                Positioned(
                                    right: -10,
                                    top: 50,
                                    child: InkWell(
                                      onTap: (){},
                                      child: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          color: Colors.white,
                                        ),
                                        child: Image.asset("assets/images/Camera.png"),
                                      ),
                                    ))
                              ],
                            ),
                          ),
                          // Add more widgets here
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
