import 'package:ebixcash/screens/pages/drawer/helpSupport/moreQueries/more_queries.dart';
import 'package:ebixcash/screens/pages/drawer/helpSupport/myRequest/my_request.dart';
import 'package:flutter/material.dart';

import 'helpWithRecentOrder/help_with_recent_order.dart';

class HelpSupport extends StatefulWidget {
  const HelpSupport({super.key});

  @override
  State<HelpSupport> createState() => _HelpSupportState();
}

class _HelpSupportState extends State<HelpSupport> {
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
        title: const Text("Help & Support", style: TextStyle(
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
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const MyRequests()));
                },
                tileColor: const Color.fromRGBO(246, 246, 246, 1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                ),
                title: const Text(
                  "My Requests",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                  ),
                ),
                trailing: const Icon(Icons.keyboard_arrow_right_sharp),
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(252, 196, 232, 1),
                            Color.fromRGBO(255, 255, 255, 1),
                          ]
                      )
                  ),
                  child: const Center(
                      child:
                      Icon(
                        Icons.history,
                        color: Color.fromRGBO(174, 32, 128, 1),
                      )
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const HelpWithRecentOrders(),
              const SizedBox(
                height: 20,
              ),
              const MoreQueries()
            ],
          ),
        ),
      ),
    );
  }
}

