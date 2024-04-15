import 'package:ebixcash/screens/pages/dashboard/rechargeAndBillPayment/broadband/selectBroadBandProvider/selectBroadBandProvider.dart';
import 'package:flutter/material.dart';

class BroadBandScreen extends StatefulWidget {
  const BroadBandScreen({super.key});

  @override
  State<BroadBandScreen> createState() => _BroadBandScreenState();
}

class _BroadBandScreenState extends State<BroadBandScreen> {
  List broadBandProviders = [
    {
      "broadBandProviderName" : "ACT Broadband",
      "broadBandProviderLogo" : "assets/images/act-broadband.png",
    },
    {
      "broadBandProviderName" : "Airtel Broadband",
      "broadBandProviderLogo" : "assets/images/airtel.png",
    },
    {
      "broadBandProviderName" : "Airtel Landline",
      "broadBandProviderLogo" : "assets/images/airtel.png",
    },
    {
      "broadBandProviderName" : "BSNL Landline - Corporate",
      "broadBandProviderLogo" : "assets/images/bsnl-landline.png",
    },
    {
      "broadBandProviderName" : "Excell Broadband",
      "broadBandProviderLogo" : "assets/images/excell-broadband.png",
    },
    {
      "broadBandProviderName" : "Hathway Broadband",
      "broadBandProviderLogo" : "assets/images/hathway-broadband.png",
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
        title: const Text("Broadband Providers", style: TextStyle(
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
                          child: Image.asset("assets/images/airtel.png"),
                        ),
                        title: const Text("Airtel Broadband", style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                        ),),
                        subtitle: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              child: Text("9910686363", style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 16,
                              )),
                            ),
                            Text("Last paid ₹750 on 05 September 2022", style: TextStyle(
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
                      hintText: "Search by Provider",
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
                      title: Text(broadBandProviders[index]["broadBandProviderName"]),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SelectBroadBandProviderScreen(
                          selectBroadBandProvider: broadBandProviders[index],
                        )));
                      },
                      contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
                      leading: SizedBox(
                        width: 50,
                        height: 50,
                        child: Image.asset(broadBandProviders[index]["broadBandProviderLogo"]),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index){
                    return const Divider(
                      color: Color.fromRGBO(221, 221, 221, 1),
                    );
                  },
                  itemCount: broadBandProviders.length
              )
            ],
          ),
        ),
      ),
    );
  }
}
