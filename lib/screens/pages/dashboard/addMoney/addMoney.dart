import 'package:ebixcash/screens/pages/dashboard/addMoney/addMoneyToWallet/addMoneyToWallet.dart';
import 'package:flutter/material.dart';
import 'package:mobkit_dashed_border/mobkit_dashed_border.dart';

class AddMoneyScreen extends StatefulWidget {
  const AddMoneyScreen({super.key});

  @override
  State<AddMoneyScreen> createState() => _AddMoneyScreenState();
}

class _AddMoneyScreenState extends State<AddMoneyScreen> {

  int selectedDebitIndex = -1;

  List debitFrom = [
    {
      "debitType" : "Credit Card",
      "debitTypeLogo" : "assets/images/mastercard.png",
      "debitTypeIcon" : "assets/images/card.png",
      "debitTypeNo" : "**** **** **** 1234",
      "debitValue" : false,
      "debitId" : 1,
    },
    {
      "debitType" : "Debit Card",
      "debitTypeLogo" : "assets/images/visa_small.png",
      "debitTypeIcon" : "assets/images/card.png",
      "debitTypeNo" : "**** **** **** 5678",
      "debitValue" : false,
      "debitId" : 2,
    },
    {
      "debitType" : "ICICI Bank",
      "debitTypeLogo" : "assets/images/icici_bank_logo.png",
      "debitTypeIcon" : "assets/images/bank_filled.png",
      "debitTypeNo" : "**** **** **** 9012",
      "debitValue" : false,
      "debitId" : 3,
    }
  ];

  Map<String, dynamic> selectedDebit = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Add Money"),
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
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/top_background.png"),
                  fit: BoxFit.contain,
                  alignment: Alignment.topCenter
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("My Balance : ", style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat',
                      fontSize: 14,
                      color: Colors.white
                  ),),
                  Text("Rs. 1,00,000.00", style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Montserrat',
                      fontSize: 14,
                      color: Colors.white
                  ),)
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(

                          prefixIcon: const Icon(
                            Icons.currency_rupee,
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
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
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
                                child: const Text("₹ 500", style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: "Montserrat",
                                  color: Color.fromRGBO(185, 26, 129, 1)
                                ),)
                            ),
                          ),
                          Container(
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
                                child: const Text("₹ 1000", style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: "Montserrat",
                                    color: Color.fromRGBO(185, 26, 129, 1)
                                ),)
                            ),
                          ),
                          Container(
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
                                child: const Text("₹ 2000", style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: "Montserrat",
                                    color: Color.fromRGBO(185, 26, 129, 1)
                                ),)
                            ),
                          ),
                          Container(
                            height: 30,
                            padding: const EdgeInsets.all(1),
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(colors: [

                                  Color.fromRGBO(189, 34, 135, 1),
                                  Color.fromRGBO(102, 84, 159, 1),
                                ]
                                ),
                                borderRadius: BorderRadius.circular(25)
                            ),
                            child: ElevatedButton(

                                onPressed: (){

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
                                child: const Text("₹ 5000", style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: "Montserrat",
                                    color: Color.fromRGBO(185, 26, 129, 1)
                                ),)
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color.fromRGBO(112, 112, 112, 1)
                      )
                    )
                  ),
                  child: const Text("Debit From", style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                  ),),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index){
                    return InkWell(
                      onTap: (){
                        setState(() {
                          selectedDebitIndex = index;
                          selectedDebit = debitFrom[index];
                        });

                      },
                      child: ListTile(
                        tileColor: const Color.fromRGBO(246, 246, 246, 1),
                        selectedTileColor: const Color.fromRGBO(255, 241, 241, 1),
                        selectedColor: Colors.black,
                        selected: selectedDebitIndex == index,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(
                            color: selectedDebitIndex == index ? const Color.fromRGBO(185, 26, 129, 1) : const Color.fromRGBO(246, 246, 246, 1)
                          )
                        ),
                        leading: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Image.asset(debitFrom[index]["debitTypeIcon"]),
                        ),
                        trailing: Image.asset(debitFrom[index]["debitTypeLogo"]),
                        horizontalTitleGap: 0,

                        title: Text(debitFrom[index]["debitType"], style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Montserrat"
                        ),),
                        subtitle: Row(
                          children: [
                            const Icon(Icons.lock_outline, size: 13,),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(debitFrom[index]["debitTypeNo"], style: const TextStyle(
                              fontSize: 13,
                              fontFamily: "Montserrat",
                              color: Color.fromRGBO(148, 148, 148, 1)
                            ),)
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index){
                    return const SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: debitFrom.length),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: const DashedBorder(
                      dashLength: 5,
                      strokeCap: StrokeCap.round,
                      top: BorderSide(color: Color.fromRGBO(150, 150, 150, 1), width: 1),
                      bottom: BorderSide(color: Color.fromRGBO(150, 150, 150, 1), width: 1),
                      right: BorderSide(color: Color.fromRGBO(150, 150, 150, 1), width: 1),
                      left: BorderSide(color: Color.fromRGBO(150, 150, 150, 1), width: 1)
                  )
                ),
                child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Colors.white
                      ),
                      elevation: MaterialStatePropertyAll(0),
                    ),
                    onPressed: (){

                    },
                    child: const Text("+  Add new method", style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 16,
                      color: Colors.black
                    ),)
                ),
              )
            ],
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
              print(selectedDebit);
              Navigator.push(context, MaterialPageRoute(builder: (context) => AddMoneyToWallet(selectedDebitForm: selectedDebit,)));
            },
            child: Text(
              "Add Money to Wallet".toUpperCase(),
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
