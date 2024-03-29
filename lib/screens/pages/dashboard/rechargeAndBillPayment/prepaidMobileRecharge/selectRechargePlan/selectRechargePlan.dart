import 'package:ebixcash/screens/pages/dashboard/rechargeAndBillPayment/prepaidMobileRecharge/selectRechargePlan/mobileRecharge/mobileRecharge.dart';
import 'package:flutter/material.dart';

class SelectRechargePlanScreen extends StatefulWidget {

  String fullName;
  String mobile;

  SelectRechargePlanScreen({ required this.fullName, required this.mobile, super.key});

  @override
  State<SelectRechargePlanScreen> createState() => _SelectRechargePlanScreenState();
}

class _SelectRechargePlanScreenState extends State<SelectRechargePlanScreen> with TickerProviderStateMixin{

  late final TabController tabController;

  Color setColor = const Color.fromRGBO(155, 153, 155, 1);

  List popularPackage = [
    {
      "packageAmount" : "749",
      "data": "2 GB/Day",
      "validity" : "90",
      "voice" : "Unlimited Calls",
      "sms" : "100 SMS/day",
    },
    {
      "packageAmount" : "2999",
      "data": "2 GB/Day",
      "validity" : "90",
      "voice" : "Unlimited Calls",
      "sms" : "100 SMS/day",
    },
    {
      "packageAmount" : "666",
      "data": "2 GB/Day",
      "validity" : "90",
      "voice" : "Unlimited Calls",
      "sms" : "100 SMS/day",
    },
    {
      "packageAmount" : "209",
      "data": "2 GB/Day",
      "validity" : "90",
      "voice" : "Unlimited Calls",
      "sms" : "100 SMS/day",
    }
  ];
  String operatorName = "Select Operator";
  String circleName = "Select Circle";
  List operators = [
    {
      "operatorName" : "Jio Prepaid",
      "operatorLogo" : "assets/images/reliance_jio.png"
    },
    {
      "operatorName" : "Airtel Prepaid",
      "operatorLogo" : "assets/images/airtel.png"
    },
    {
      "operatorName" : "Jio Prepaid",
      "operatorLogo" : "assets/images/reliance_jio.png"
    },
    {
      "operatorName" : "Airtel Prepaid",
      "operatorLogo" : "assets/images/airtel.png"
    },
  ];
  List circles = [
    {
      "circlesName" : "Bihar",
    },
    {
      "circlesName" : "Delhi Ncr",
    },
    {
      "circlesName" : "Haryana",
    },
    {
      "circlesName" : "Uttar Pradesh",
    },
    {
      "circlesName" : "Bihar",
    },
    {
      "circlesName" : "Delhi Ncr",
    },
    {
      "circlesName" : "Haryana",
    },
    {
      "circlesName" : "Uttar Pradesh",
    },
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
        title: const Text("Select a Recharge Plan", style: TextStyle(
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
      body: Container(
        padding: const EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 0),
        height: MediaQuery.of(context).size.height,
        child: Column(

          children: [
            Card(
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Colors.black12
                ),
                borderRadius: BorderRadius.circular(5)
              ),
              elevation: 0,
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    ListTile(
                      leading: Image.asset("assets/images/reliance_jio.png"),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10
                      ),
                      title: Text(widget.fullName, style: const TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                      )),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(widget.mobile, style: const TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 16,
                        )),
                      ),

                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: (){
                              showModalBottomSheet(
                                  context: context,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      )
                                  ),
                                  builder: (BuildContext context){
                                    return Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Text("Select Operators", style: TextStyle(
                                            fontFamily: "Montserrat",
                                            fontSize: 16,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600
                                          ),),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          ListView.separated(
                                              shrinkWrap: true,
                                              itemBuilder: (BuildContext context, int index){
                                                return ListTile(
                                                  contentPadding: const EdgeInsets.symmetric(
                                                    horizontal: 0
                                                  ),
                                                  onTap: (){
                                                    setState(() {
                                                      operatorName = operators[index]["operatorName"];
                                                    });
                                                    Navigator.pop(context);
                                                  },
                                                  leading: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child: Image.asset(operators[index]["operatorLogo"]),
                                                  ),
                                                  title: Text("${operators[index]["operatorName"]}", style: const TextStyle(
                                                      fontFamily: "Montserrat",
                                                      fontSize: 16,
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.w600
                                                  ),),
                                                );
                                              },
                                              separatorBuilder: (BuildContext context, int index){
                                                return const Divider(
                                                  color: Color.fromRGBO(173, 173, 173, 1),
                                                );
                                              },
                                              itemCount: operators.length
                                          )
                                        ],
                                      ),
                                    );
                                  }
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Color.fromRGBO(221, 221, 221, 1)
                                      )
                                  )
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(operatorName, style: const TextStyle(
                                      fontSize: 14,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w400
                                  ),),
                                  const Icon(
                                    Icons.arrow_drop_down,
                                    color: Color.fromRGBO(102, 102, 102, 1),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: (){
                              showModalBottomSheet(
                                  context: context,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      )
                                  ),
                                  builder: (BuildContext context){
                                    return Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Text("Select Circle", style: TextStyle(
                                              fontFamily: "Montserrat",
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600
                                          ),),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          ListView.separated(
                                              shrinkWrap: true,
                                              physics: ScrollPhysics(),
                                              itemBuilder: (BuildContext context, int index){
                                                return ListTile(
                                                  contentPadding: const EdgeInsets.symmetric(
                                                      horizontal: 0
                                                  ),
                                                  onTap: (){
                                                    setState(() {
                                                      circleName = circles[index]["circlesName"];
                                                    });
                                                    Navigator.pop(context);
                                                  },
                                                  title: Text("${circles[index]["circlesName"]}", style: const TextStyle(
                                                      fontFamily: "Montserrat",
                                                      fontSize: 16,
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.w600
                                                  ),),
                                                );
                                              },
                                              separatorBuilder: (BuildContext context, int index){
                                                return const Divider(
                                                  color: Color.fromRGBO(173, 173, 173, 1),
                                                );
                                              },
                                              itemCount: operators.length
                                          )
                                        ],
                                      ),
                                    );
                                  }
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Color.fromRGBO(221, 221, 221, 1)
                                      )
                                  )
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(circleName, style: const TextStyle(
                                      fontSize: 14,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w400
                                  )),
                                  const Icon(
                                    Icons.arrow_drop_down,
                                    color: Color.fromRGBO(102, 102, 102, 1),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Search for a plan, eg 249 or 28 days",
                  hintStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Montserrat"
                  ),
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black12
                      ),
                      borderRadius: BorderRadius.circular(5)
                  )
              ),

            ),
            const SizedBox(
              height: 20,
            ),
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
                    child: Text("Popular", ),
                  ),
                  Tab(
                    child: Text("Cricket Packs",),
                  ),
                  Tab(
                    child: Text("Smart Phones", ),
                  )
                ]
            ),
            Expanded(
              flex: 1,
              child: TabBarView(
                  controller: tabController,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                        top: 20,
                      ),
                      child: ListView.separated(
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          itemBuilder: (BuildContext context, int index){
                            return ListTile(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => MobileRechargeScreen(
                                    selectedPlan: popularPackage[index],
                                    selectedUserMobile: widget.mobile,
                                    selectedUserName: widget.fullName,
                                    selectedCircle: circleName,
                                    selectedOperator: operatorName
                                )));
                              },
                              contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                              titleAlignment: ListTileTitleAlignment.top,
                              leading: Container(
                                width: 98,
                                height: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  gradient: const LinearGradient(
                                      colors: [
                                        Color.fromRGBO(102, 84, 159, 1),
                                        Color.fromRGBO(189, 34, 135, 1),
                                      ]
                                  )
                                ),
                                child: Center(
                                  child: Text("₹ ${popularPackage[index]["packageAmount"]}", style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                      fontFamily: "Montserrat",
                                      color: Colors.white
                                  ),),
                                ),
                              ),
                              title: Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text("Data:", style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: "Montserrat",
                                          color: Color.fromRGBO(173, 173, 173, 1)
                                        ),),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text("${popularPackage[index]["data"]}", style: const TextStyle(
                                            fontSize: 14,
                                            fontFamily: "Montserrat",
                                            color: Colors.black
                                        ))
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 50,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text("Validity:", style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: "Montserrat",
                                            color: Color.fromRGBO(173, 173, 173, 1)
                                        )),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text("${popularPackage[index]["validity"]} days", style: const TextStyle(
                                            fontSize: 14,
                                            fontFamily: "Montserrat",
                                            color: Colors.black
                                        ))
                                      ],
                                    )
                                  ],
                                ),
                              ),

                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Voice: ${popularPackage[index]["voice"]} | SMS : ${popularPackage[index]["sms"]}", style: const TextStyle(
                                    color: Color.fromRGBO(103, 103, 103, 1),
                                    fontFamily: "Montserrat",
                                    fontSize: 11,
                                  ),),
                                  Container(
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Color.fromRGBO(42, 188, 220, 1)
                                        )
                                      )
                                    ),
                                    child: TextButton(
                                        style: TextButton.styleFrom(
                                            padding: EdgeInsets.zero,
                                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                            alignment: Alignment.centerLeft),
                                        onPressed: (){

                                        },
                                        child: const Text("Additional Benefits", style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "Montserrat",
                                          color: Colors.black
                                        ),)
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                          separatorBuilder: (BuildContext context, int index){
                            return const Divider(
                              color: Color.fromRGBO(173, 173, 173, 1),
                            );
                          },
                          itemCount: popularPackage.length
                      ),
                    ),
                    Container(
                      child: Text("Cricket Packs"),
                    ),
                    Container(
                      child: Text("Smart Phones"),
                    )
                  ]
              ),
            )
          ],
        ),
      ),
    );
  }
}
