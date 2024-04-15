import 'package:ebixcash/screens/pages/dashboard/rechargeAndBillPayment/electricityRecharge/selectedElectricityProvider/selectedElectricityProvider.dart';
import 'package:flutter/material.dart';

class ElectricityRechargeScreen extends StatefulWidget {
  const ElectricityRechargeScreen({super.key});

  @override
  State<ElectricityRechargeScreen> createState() => _ElectricityRechargeScreenState();
}

class _ElectricityRechargeScreenState extends State<ElectricityRechargeScreen> {
  List electricityProvider = [
    {
      "electricityProviderName" : "BSES Rajdhani Delhi",
      "electricityProviderLogo" : "assets/images/BSES-Delhi.png",
    },
    {
      "electricityProviderName" : "BSES Rajdhani Prepaid Meter Recharge",
      "electricityProviderLogo" : "assets/images/BSES-Delhi.png",
    },
    {
      "electricityProviderName" : "BSES Yamuna Delhi",
      "electricityProviderLogo" : "assets/images/BSES-Delhi.png",
    },
    {
      "electricityProviderName" : "BSES Yamuna Prepaid Meter Recharge",
      "electricityProviderLogo" : "assets/images/BSES-Delhi.png",
    },
    {
      "electricityProviderName" : "New Delhi Municipal Council",
      "electricityProviderLogo" : "assets/images/new_delhi_municipal_council.png",
    },
    {
      "electricityProviderName" : "Tata Power - DDL",
      "electricityProviderLogo" : "assets/images/Tata_Power_Renewable_Energy.png",
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
        title: const Text("Electricity Provider", style: TextStyle(
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
                          child: Image.asset("assets/images/BSES-Delhi.png"),
                        ),
                        title: const Text("BSES Yamuna Delhi", style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                        ),),
                        subtitle: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              child: Text("101010172", style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 16,
                              )),
                            ),
                            Text("Last paid ₹300 on 18 June 2022", style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 10,
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Search by Biller",
                      hintStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Montserrat"
                      ),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(225, 225, 225, 1)
                          ),
                          borderRadius: BorderRadius.circular(5)
                      )
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
                    child: Text("All Billers", style: TextStyle(
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
                      title: Text(electricityProvider[index]["electricityProviderName"]),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SelectedElectricityProviderScreen(
                          selectedElectricityProvider: electricityProvider[index],
                        )));
                      },
                      contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
                      leading: SizedBox(
                        width: 50,
                        height: 50,
                        child: Image.asset(electricityProvider[index]["electricityProviderLogo"]),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index){
                    return const Divider(
                      color: Color.fromRGBO(221, 221, 221, 1),
                    );
                  },
                  itemCount: electricityProvider.length
              )
            ],
          ),
        ),
      ),
    );
  }
}
