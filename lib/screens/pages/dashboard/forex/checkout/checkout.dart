import 'package:ebixcash/screens/pages/choosePaymentMethod/choosePaymentMethod.dart';
import 'package:ebixcash/screens/pages/dashboard/forex/checkout/buy/buy.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> with TickerProviderStateMixin {
  Color setColor = const Color.fromRGBO(155, 153, 155, 1);
  late TabController tabController;

  List buyCartData = [
    {
      "product" : "Forex Card",
      "purposeOfTravel" : "Personal Visit",
      "traveller" : "My Self",
      "currency" : "US Dollar",
      "forexAmount" : "2000",
      "amount" : "160380"
    },
    {
      "product" : "Forex",
      "purposeOfTravel" : "Personal Visit",
      "traveller" : "My Self",
      "currency" : "US Dollar",
      "forexAmount" : "2000",
      "amount" : "160380"
    },
    {
      "product" : "Forex 1",
      "purposeOfTravel" : "Personal Visit",
      "traveller" : "My Self",
      "currency" : "US Dollar",
      "forexAmount" : "2000",
      "amount" : "160380"
    },
    {
      "product" : "Forex Card",
      "purposeOfTravel" : "Personal Visit",
      "traveller" : "My Self",
      "currency" : "US Dollar",
      "forexAmount" : "2000",
      "amount" : "160380"
    },
    {
      "product" : "Forex Card",
      "purposeOfTravel" : "Personal Visit",
      "traveller" : "My Self",
      "currency" : "US Dollar",
      "forexAmount" : "2000",
      "amount" : "160380"
    },
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

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
        title: const Text("Checkout", style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontFamily: "Montserrat",
            color: Colors.black
        ),),
        centerTitle: true,
        actions: [
          Center(
            child: Stack(
              children: [
                IconButton(
                  onPressed: (){
                    Navigator.pushNamed(context, "/dashboard");
                  }, icon: const Icon(Icons.shopping_cart), color: Colors.black,),
                Positioned(
                    right: 2,
                    top: 5,
                    child: Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(192, 38, 138, 1),
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: const Center(
                          child: Text("0", style: TextStyle(
                              fontSize: 10,
                              fontFamily: "Montserrat",
                              color: Colors.white
                          ),)
                      ),
                    )
                )
              ],
            ),
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
          height: MediaQuery.of(context).size.height - 115,
          child: Column(
            children: [
              TabBar(
                  controller: tabController,
                  isScrollable: true,
                  indicatorColor: const Color.fromRGBO(169, 45, 140, 1),
                  onTap: (index){
                    setState(() {
                      setColor = (index == tabController.index) ? const Color.fromRGBO(169, 45, 140, 1) : const Color.fromRGBO(155, 153, 155, 1);
                    });
                  },
                  labelStyle: const TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 16,
                      color: Color.fromRGBO(155, 153, 155, 1)
                  ),
                  labelColor: setColor,
                  unselectedLabelColor: const Color.fromRGBO(155, 153, 155, 1),
                  tabs: const [
                    Tab(
                      child: Text("Buy Forex"),
                    ),
                    Tab(
                      child: Text("Sell Forex"),
                    ),
                    Tab(
                      child: Text("Transfer Money"),
                    ),
                    Tab(
                      child: Text("Reload Card"),
                    )
                  ] 
              ),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: ListView.separated(
                            shrinkWrap: true,
                            physics: const ScrollPhysics(),
                            itemBuilder: (BuildContext context, int index){
                              return Buy(buyCartData: buyCartData[index]);
                            },
                            separatorBuilder: (BuildContext context, int index){
                              return const SizedBox(
                                height: 10,
                              );
                            },
                            itemCount: buyCartData.length
                        )
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
                        child: Text("Sell Forex"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
                        child: Text("Transfer Money"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
                        child: Text("Reload Card"),
                      )
                    ]
                ),
              )
            ],
          )
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 65,
        child: ElevatedButton(
            style: const ButtonStyle(
                shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero
                    )
                ),
                backgroundColor: MaterialStatePropertyAll(
                    Color.fromRGBO(185, 26, 129, 1)
                )
            ),
            onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) => ChoosePaymentMethodScreen(
                 title: "Buy Forex",
                 paymentFor: buyCartData[0]
             )));
            },
            child: Text(
              "Checkout".toUpperCase(),
              style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  fontFamily: "Montserrat"
              ),
            )
        ),
      ),
    );
  }
}
