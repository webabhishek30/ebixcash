import 'package:flutter/material.dart';

import '../../../../components/icons/gradientIcon/purpleGradientIcon.dart';
import '../components/travelOffer/travelOfferCard/TravelOfferCard.dart';

class ForexStoreScreen extends StatefulWidget {
  const ForexStoreScreen({super.key});

  @override
  State<ForexStoreScreen> createState() => _ForexStoreScreenState();
}

class _ForexStoreScreenState extends State<ForexStoreScreen> with TickerProviderStateMixin{

  Color setColor = const Color.fromRGBO(155, 153, 155, 1);
  late final TabController tabController;

  List forexCarousel = [
    {
      "forexOfferTitle" : "FREE Delivery",
      "forexValidity" : "31st Dec 2022",
      "forexOfferCaption" : "It’s on us! Forex now delivered free at your doorsteps.",
    },
    {
      "forexOfferTitle" : "Stay Covered",
      "forexValidity" : "",
      "forexOfferCaption" : "Affordable insurance for single trip & multi-trip with optimum coverage",
    }
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Column(
          children: [
            Text(
                "Online Forex Store",
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                )
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "in Delhi",
              style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.white
              ),

            ),
          ],
        ),
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
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),

        actions: [
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, "/dashboard");
            }, icon: Image.asset("assets/images/dashboard.png", color: Colors.white,), )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const ScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/top_background.png"),
                  fit: BoxFit.contain,
                  alignment: Alignment.topCenter
              )
          ),
          child: Column(

            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 25,
                          color: Color.fromRGBO(0, 0, 0, 0.25)
                      )
                    ]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PurpleGradientIcon(
                      icon: "assets/images/buy_forex.png",
                      title: "Buy Forex",
                      btnFunc: (){
                        Navigator.pushNamed(context, "/buyForex");
                      },
                    ),
                    PurpleGradientIcon(
                      icon: "assets/images/buy_forex.png",
                      title: "Sell Forex",
                      btnFunc: (){
                        print("Sell Forex");
                      },
                    ),
                    PurpleGradientIcon(
                      icon: "assets/images/money_transfer.png",
                      title: "Transfer Money",
                      btnFunc: (){
                        print("Transfer Money");
                      },
                    ),
                    PurpleGradientIcon(
                      icon: "assets/images/reload_card.png",
                      title: "Reload Card",
                      btnFunc: (){
                        print("Reload Card");
                      },
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text("Exchange Rates in Delhi", style: TextStyle(
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
                height: 20,
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
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
                        child: Text("Buy", ),
                      ),
                      Tab(
                        child: Text("Sell",),
                      ),
                      Tab(
                        child: Text("Transfer", ),
                      )
                    ]
                ),
              ),
              Expanded(
                flex: 1,
                child: TabBarView(
                    controller: tabController,
                    children: [
                      Container(
                        height: 100,
                        clipBehavior: Clip.none,
                        padding: const EdgeInsets.only(
                          top: 20,
                        ),
                        child: SingleChildScrollView(
                          clipBehavior: Clip.hardEdge,
                          child: Table(
                            border: TableBorder.symmetric(
                                inside: const BorderSide(
                                  color: Colors.black12
                                )
                            ),
                            children: const [
                              TableRow(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("Currency", style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 16,
                                          fontWeight: FontWeight.w800
                                      ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("Forex Card", style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.w800,
                                      ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("Cash", style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.w800,
                                      ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("Travellers Cheque", style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.w800,
                                      ),),
                                    )
                                  ]
                              ),
                              TableRow(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("US Dollar", style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 16,

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("₹ 79.85", style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Montserrat",

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("₹ 80.24", style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Montserrat",

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("₹ 80.24", style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Montserrat",

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    )
                                  ]
                              ),
                              TableRow(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("US Dollar", style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 16,

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("₹ 79.85", style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Montserrat",

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("₹ 80.24", style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Montserrat",

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("₹ 80.24", style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Montserrat",

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    )
                                  ]
                              ),
                              TableRow(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("US Dollar", style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 16,

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("₹ 79.85", style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Montserrat",

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("₹ 80.24", style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Montserrat",

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("₹ 80.24", style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Montserrat",

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    )
                                  ]
                              ),
                              TableRow(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("US Dollar", style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 16,

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("₹ 79.85", style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Montserrat",

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("₹ 80.24", style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Montserrat",

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("₹ 80.24", style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Montserrat",

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    )
                                  ]
                              ),
                              TableRow(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("US Dollar", style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 16,

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("₹ 79.85", style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Montserrat",

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("₹ 80.24", style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Montserrat",

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("₹ 80.24", style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Montserrat",

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    )
                                  ]
                              ),
                              TableRow(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("US Dollar", style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 16,

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("₹ 79.85", style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Montserrat",

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("₹ 80.24", style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Montserrat",

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("₹ 80.24", style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Montserrat",

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    )
                                  ]
                              ),
                              TableRow(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("US Dollar", style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 16,

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("₹ 79.85", style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Montserrat",

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("₹ 80.24", style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Montserrat",

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("₹ 80.24", style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Montserrat",

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    )
                                  ]
                              ),
                              TableRow(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("US Dollar", style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 16,

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("₹ 79.85", style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Montserrat",

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("₹ 80.24", style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Montserrat",

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("₹ 80.24", style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Montserrat",

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    )
                                  ]
                              ),
                              TableRow(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("US Dollar", style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 16,

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("₹ 79.85", style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Montserrat",

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("₹ 80.24", style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Montserrat",

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("₹ 80.24", style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Montserrat",

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    )
                                  ]
                              ),
                              TableRow(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("US Dollar", style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 16,

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("₹ 79.85", style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Montserrat",

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("₹ 80.24", style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Montserrat",

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("₹ 80.24", style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Montserrat",

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    )
                                  ]
                              ),
                              TableRow(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("US Dollar", style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 16,

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("₹ 79.85", style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Montserrat",

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("₹ 80.24", style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Montserrat",

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text("₹ 80.24", style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Montserrat",

                                          color: Color.fromRGBO(106, 106, 106, 1)
                                      ),),
                                    )
                                  ]
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Text("Sell"),
                      ),
                      Container(
                        child: Text("Transfer"),
                      )
                    ]
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 140,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemCount: forexCarousel.length,
                      itemBuilder: (context, index){
                        return Container(
                          margin: EdgeInsets.only(right: index < forexCarousel.length - 1 ? 10 : 0),
                          child: TravelOfferCard(
                            offerTitle: forexCarousel[index]["forexOfferTitle"],
                            offerCode: forexCarousel[index]["forexValidity"],
                            offerCaption: forexCarousel[index]["forexOfferCaption"],
                          ),
                        );
                      }
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
