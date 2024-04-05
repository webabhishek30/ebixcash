import 'package:flutter/material.dart';

import '../../../../../choosePaymentMethod/choosePaymentMethod.dart';

class SelectFastagPlanScreen extends StatefulWidget {
  Map<String, dynamic> selectedFastagProvider;
  String vehicleNumber;
  SelectFastagPlanScreen({required this.selectedFastagProvider, required this.vehicleNumber, super.key});

  @override
  State<SelectFastagPlanScreen> createState() => _SelectFastagPlanScreenState();
}

class _SelectFastagPlanScreenState extends State<SelectFastagPlanScreen> {

  List recommendedPlan = [
    "300", "500", "750",
  ];

  final TextEditingController amountController = TextEditingController();

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
        title: const Text('FASTag Recharge', style: TextStyle(
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
          child: Card(
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
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      titleAlignment: ListTileTitleAlignment.top,
                      leading: SizedBox(
                        width: 50,
                        height: 50,
                        child: Image.asset(widget.selectedFastagProvider["fastagProviderLogo"]),
                      ),
                      title: Text(widget.selectedFastagProvider["fastagProviderName"], style: const TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                      ),),
                      subtitle: Text(widget.vehicleNumber, style: const TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 16,
                      )),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: Divider(
                        height: 1,
                      ),
                    ),
                    const Text("Bill Details", style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 12,

                    ),),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Customer Name : Prawin Jha", style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 12,

                    ),),
                    const Text("Account Balance : ₹ 500", style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 12,

                    ),),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        controller: amountController,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 5),
                            prefixIcon: const Icon(
                              Icons.currency_rupee,
                              size: 18,
                              color: Colors.black,
                            ),
                            hintText: "Enter Amount",
                            hintStyle: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Montserrat"
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5)
                            )
                        ),

                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Recommended", style: TextStyle(
                      fontSize: 12,
                      fontFamily: "Montserrat",
                    ),),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 30,
                      child: ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index){
                            return Container(
                              height: 30,
                              padding: const EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(colors: [
                                    Color.fromRGBO(102, 84, 159, 1),
                                    Color.fromRGBO(189, 34, 135, 1),
                                  ]
                                  ),
                                  borderRadius: BorderRadius.circular(25)
                              ),
                              child: ElevatedButton(

                                  onPressed: (){
                                    setState(() {
                                      amountController.text = recommendedPlan[index];
                                    });
                                  },
                                  style: ButtonStyle(
                                      elevation: const MaterialStatePropertyAll(0),

                                      backgroundColor: const MaterialStatePropertyAll(
                                          Colors.white
                                      ),
                                      shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(25),
                                          )
                                      )
                                  ),
                                  child: Text("₹ ${recommendedPlan[index]}", style: const TextStyle(
                                      fontSize: 13,
                                      fontFamily: "Montserrat",
                                      color: Color.fromRGBO(185, 26, 129, 1)
                                  ),)
                              ),
                            );
                          },
                          separatorBuilder: (BuildContext context, int index){
                            return const SizedBox(
                              width: 10,
                            );
                          },
                          itemCount: recommendedPlan.length
                      ),
                    )
                  ]
              ),
            ),
          ),
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
              print(amountController.text);
              Navigator.push(context, MaterialPageRoute(builder: (context) => ChoosePaymentMethodScreen(
                  title: 'Fastag Recharge',
                  amount: amountController.text
              )));
            },
            child: Text(
              "Proceed to Pay".toUpperCase(),
              style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  fontFamily: "Montserrat",
                  color: Colors.white
              ),
            )
        ),
      ),
    );
  }
}
