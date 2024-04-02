import 'package:flutter/material.dart';

class BankAccountScreen extends StatefulWidget {
  const BankAccountScreen({super.key});

  @override
  State<BankAccountScreen> createState() => _BankAccountScreenState();
}

class _BankAccountScreenState extends State<BankAccountScreen> {

  String dropdownvalue = 'Check Balance';

  List dropdownItem = [
    "Check Balance",
    "Remove Bank"
  ];

  List bankAccountList = [
    {
      "bankName" : "Axis Bank 4255",
      "bankAccountLogo" : "assets/images/axisbank.png",
      "bankAccountType" : "Savings Account"
    },
    {
      "bankName" : "Bank of Baroda 8527",
      "bankAccountLogo" : "assets/images/bankOfBaroda.png",
      "bankAccountType" : "Savings Account"
    },
    {
      "bankName" : "HDFC Bank 3011",
      "bankAccountLogo" : "assets/images/hdfc.png",
      "bankAccountType" : "Current Account"
    },
    {
      "bankName" : "ICICI Bank 2527",
      "bankAccountLogo" : "assets/images/icici.png",
      "bankAccountType" : "Savings Account"
    }
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
        title: const Text("Bank Accounts", style: TextStyle(
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
        padding: const EdgeInsets.all(20),
        child: ListView.separated(
            shrinkWrap: true,
            itemCount: bankAccountList.length,
            itemBuilder: (BuildContext context, int index){
              return ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Container(
                  width: 50,
                  height: 50,
                  child: Image.asset(bankAccountList[index]['bankAccountLogo']),
                ),
                title: Text(bankAccountList[index]['bankName'], style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Montserrat"
                ),),
                subtitle: Text(bankAccountList[index]['bankAccountType'], style: const TextStyle(
                    fontSize: 10,
                    fontFamily: "Montserrat"
                )),
                trailing: IconButton(
                    onPressed: (){
                      showModalBottomSheet(
                          context: context,
                          isDismissible: false,
                          isScrollControlled: true,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25),

                              )
                          ),
                          builder: (BuildContext context){
                            return Container(
                              padding: EdgeInsets.only(
                                  bottom: MediaQuery.of(context).viewInsets.bottom,
                                  top: 20,
                                  right: 20,
                                  left: 20
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.black12
                                      ),
                                      child: InkWell(
                                        onTap: (){
                                          Navigator.pop(context);
                                        },
                                        child: const Icon(
                                          Icons.close,
                                          color: Colors.white,
                                          size: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        InkWell(
                                          overlayColor: const MaterialStatePropertyAll(
                                              Colors.transparent
                                          ),
                                          onTap: (){

                                          },
                                          child: Container(
                                            width: MediaQuery.of(context).size.width,
                                            padding: const EdgeInsets.only(
                                                bottom: 30
                                            ),
                                            decoration: const BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(width: 1.5, color: Colors.black12)
                                                )
                                            ),
                                            child: const Text("Current Balance", style: TextStyle(
                                              fontSize: 18,
                                              fontFamily: "Montserrat",
                                              fontWeight: FontWeight.w600
                                            ),),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        InkWell(
                                          overlayColor: const MaterialStatePropertyAll(
                                              Colors.transparent
                                          ),
                                          onTap: (){
                                            setState(() {
                                              showDialog(context: context, builder: (BuildContext context) {
                                                return Center(
                                                  child: Container(
                                                    width: MediaQuery.of(context).size.width,
                                                    height: 250,
                                                    margin: const EdgeInsets.symmetric(
                                                        horizontal: 20
                                                    ),
                                                    padding: const EdgeInsets.all(40),
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(15),
                                                        color: Colors.white
                                                    ),
                                                    child: Column(
                                                      children: [
                                                        const DefaultTextStyle(
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              fontFamily: "Montserrat",
                                                              fontWeight: FontWeight.w700,
                                                              color: Color.fromRGBO(24, 24, 24, 1)
                                                          ),
                                                          child: Text(
                                                            "Please confirm if you want to remove the account?",
                                                            textAlign: TextAlign.center,
                                                            softWrap: true,
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          height: 80,
                                                        ),
                                                        Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            SizedBox(
                                                              height: 46,
                                                              child: TextButton(
                                                                  style: ButtonStyle(
                                                                      padding: const MaterialStatePropertyAll<EdgeInsetsGeometry>(
                                                                          EdgeInsets.symmetric(
                                                                              horizontal: 40
                                                                          )
                                                                      ),
                                                                      shape: MaterialStatePropertyAll(
                                                                          RoundedRectangleBorder(
                                                                              borderRadius: BorderRadius.circular(25)
                                                                          )
                                                                      )
                                                                  ),
                                                                  onPressed: (){
                                                                    Navigator.pop(context);
                                                                  },
                                                                  child: const Text(
                                                                    "Cancel",
                                                                    style: TextStyle(
                                                                        fontSize: 14,
                                                                        fontFamily: "Montserrat",
                                                                        fontWeight: FontWeight.w600
                                                                    ),
                                                                  )
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 46,
                                                              child: ElevatedButton(
                                                                  style: ButtonStyle(
                                                                      padding: const MaterialStatePropertyAll<EdgeInsetsGeometry>(
                                                                          EdgeInsets.symmetric(
                                                                              horizontal: 40
                                                                          )
                                                                      ),
                                                                      backgroundColor: const MaterialStatePropertyAll<Color>(
                                                                          Color.fromRGBO(185, 26, 129, 1)
                                                                      ),
                                                                      shape: MaterialStatePropertyAll(
                                                                          RoundedRectangleBorder(
                                                                              borderRadius: BorderRadius.circular(25)
                                                                          )
                                                                      )
                                                                  ),
                                                                  onPressed: (){
                                                                    Navigator.pop(context);
                                                                  },
                                                                  child: const Text(
                                                                    "Confirm",
                                                                    style: TextStyle(
                                                                        fontSize: 14,
                                                                        color: Colors.white,
                                                                        fontFamily: "Montserrat"
                                                                    ),
                                                                  )
                                                              ),
                                                            )
                                                          ],
                                                        )

                                                      ],
                                                    ),
                                                  ),
                                                );
                                              });
                                            });
                                          },
                                          child: Container(
                                            width: MediaQuery.of(context).size.width,
                                            padding: const EdgeInsets.only(
                                                bottom: 30
                                            ),
                                            decoration: const BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(width: 1.5, color: Colors.black12)
                                                )
                                            ),
                                            child: const Text("Remove Account", style: TextStyle(
                                                fontSize: 18,
                                                fontFamily: "Montserrat",
                                                fontWeight: FontWeight.w600
                                            ),),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );
                          }
                      );
                    },
                    icon: const Icon(
                      Icons.more_vert,
                      color: Color.fromRGBO(72, 68, 68, 1),
                    )
                ),
              );
            },
          separatorBuilder: (BuildContext context, int index){
              return const Divider(
                color: Color.fromRGBO(0, 0, 0, 0.5),
              );
          },

        ),
      ),
    );
  }
}
