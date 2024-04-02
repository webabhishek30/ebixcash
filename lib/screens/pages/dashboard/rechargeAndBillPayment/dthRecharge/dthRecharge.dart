import 'package:ebixcash/screens/pages/dashboard/rechargeAndBillPayment/dthRecharge/selectedDthProvider/selectedDthProvider.dart';
import 'package:flutter/material.dart';

class DthRechargeScreen extends StatefulWidget {
  const DthRechargeScreen({super.key});

  @override
  State<DthRechargeScreen> createState() => _DthRechargeScreenState();
}

class _DthRechargeScreenState extends State<DthRechargeScreen> {

  List dthProviders = [
    {
      "dthProviderName" : "Airtel Digital TV",
      "dthProviderLogo" : "assets/images/airtel.png",
    },
    {
      "dthProviderName" : "Dish TV",
      "dthProviderLogo" : "assets/images/dish_tv.png",
    },
    {
      "dthProviderName" : "Sun Direct",
      "dthProviderLogo" : "assets/images/sun_direct.png",
    },
    {
      "dthProviderName" : "Tata Play (Formerly Tatasky)",
      "dthProviderLogo" : "assets/images/tata_play.png",
    },
    {
      "dthProviderName" : "D2H",
      "dthProviderLogo" : "assets/images/d2h.png",
    },
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
        title: const Text("Select DTH Provider", style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontFamily: "Montserrat",
            color: Colors.black
        ),),
        centerTitle: true,
        actions: [
          Center(
            child: Image.asset("assets/images/BBPS.png")
          ),
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
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    color: Color.fromRGBO(225, 225, 225, 1)
                  ),
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Recent Account", style: TextStyle(
                        fontSize: 12,
                        fontFamily: "Montserrat",
                      ),),
                      const SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        titleAlignment: ListTileTitleAlignment.top,
                        leading: SizedBox(
                          width: 50,
                          height: 50,
                          child: Image.asset("assets/images/tata_play.png"),
                        ),
                        title: const Text("Tata Play", style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                        ),),
                        subtitle: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text("9910686363", style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 16,
                              )),
                            ),
                            Text("Bill Due", style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 14,
                                color: Color.fromRGBO(1, 1, 1, 1)
                            ),)
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text("All DTH Providers", style: TextStyle(
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
                height: 30,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index){
                    return ListTile(
                      title: Text(dthProviders[index]["dthProviderName"]),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SelectedDthProviderScreen(
                          selectedDthProvider: dthProviders[index],
                        )));
                      },
                      contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
                      leading: SizedBox(
                        width: 50,
                        height: 50,
                        child: Image.asset(dthProviders[index]["dthProviderLogo"]),
                      ),
                    );
                  }, 
                  separatorBuilder: (BuildContext context, int index){
                    return const Divider(
                      color: Color.fromRGBO(221, 221, 221, 1),
                    );
                  }, 
                  itemCount: dthProviders.length
              )
            ],
          ),
        ),
      ),
    );
  }
}
