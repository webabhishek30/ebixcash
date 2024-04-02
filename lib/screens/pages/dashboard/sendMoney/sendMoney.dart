import 'package:ebixcash/screens/pages/dashboard/sendMoney/sendMoneyDebitFrom/sendMoneyDebitFrom.dart';
import 'package:flutter/material.dart';
import 'package:mobkit_dashed_border/mobkit_dashed_border.dart';

class SendMoneyScreen extends StatefulWidget {
  const SendMoneyScreen({super.key});

  @override
  State<SendMoneyScreen> createState() => _SendMoneyScreenState();
}

class _SendMoneyScreenState extends State<SendMoneyScreen> {

  int selectedBeneficiary = -1;

  List beneficiaryList = [
    {
      "firstName" : "Kristin",
      "lastName" : "Watson",
      "date" : "July 14, 2015"
    },
    {
      "firstName" : "Wade",
      "lastName" : "Warren",
      "date" : "December 2, 2018"
    },
    {
      "firstName" : "Dianne",
      "lastName" : "Russell",
      "date" : "September 24, 2017"
    },
    {
      "firstName" : "Robert",
      "lastName" : "Fox",
      "date" : "February 28, 2018"
    },
    {
      "firstName" : "Darrell",
      "lastName" : "Steward",
      "date" : "February 29, 2012"
    }
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Send Money"),
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
                            suffixIcon: const Icon(
                              Icons.contacts,
                              color: Color.fromRGBO(197, 197, 197, 1),
                            ),
                            hintText: "Enter mobile number",
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
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 46,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                elevation: const MaterialStatePropertyAll(0),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25)
                                    )
                                ),
                                backgroundColor: const MaterialStatePropertyAll(
                                    Color.fromRGBO(185, 26, 129, 1)
                                )
                            ),
                            onPressed: (){

                            },
                            child: const Text("Send Money", style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Montserrat"
                            ),)
                        ),
                      ),
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
                  child: const Text("Select Beneficiary", style: TextStyle(
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
                  physics: const ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index){
                    String firstCharacter = beneficiaryList[index]["firstName"];
                    String lastCharacter = beneficiaryList[index]["lastName"];
                    return InkWell(
                      onTap: (){
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SendMoneyDebitFromScreen(fullName: '${beneficiaryList[index]["firstName"]} ${beneficiaryList[index]["lastName"]}',)));
                        });
                      },
                      child: ListTile(
                        tileColor: const Color.fromRGBO(246, 246, 246, 1),
                        selectedTileColor: const Color.fromRGBO(255, 241, 241, 1),
                        selectedColor: Colors.black,
                        //selected: selectedDebitIndex == index,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: BorderSide(
                                color: selectedBeneficiary == index ? const Color.fromRGBO(185, 26, 129, 1) : const Color.fromRGBO(246, 246, 246, 1)
                            )
                        ),
                        leading: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: const LinearGradient(
                                colors: [
                                  Color.fromRGBO(255, 255, 255, 1),
                                  Color.fromRGBO(252, 196, 232, 1),
                                ]
                            )
                          ),
                          child: Center(
                            child: Text(
                                "${firstCharacter.substring(0, 1)}${lastCharacter.substring(0, 1)}",
                              style: const TextStyle(
                                fontSize: 14,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(174, 32, 128, 1)
                              ),
                            ),
                          ),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_rounded
                        ),
                        title: Text("${beneficiaryList[index]["firstName"]} ${beneficiaryList[index]["lastName"]}", style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Montserrat"
                        ),),
                        subtitle: Text("${beneficiaryList[index]["date"]}", style: const TextStyle(
                            fontSize: 13,
                            fontFamily: "Montserrat",
                            color: Color.fromRGBO(148, 148, 148, 1)
                        ),)
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index){
                    return const SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: beneficiaryList.length),
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
                    child: const Text("+  Add Beneficiary", style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 16,
                        color: Colors.black
                    ),)
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
