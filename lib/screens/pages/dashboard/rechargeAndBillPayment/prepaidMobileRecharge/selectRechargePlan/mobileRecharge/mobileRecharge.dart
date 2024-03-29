import 'package:ebixcash/screens/pages/choosePaymentMethod/choosePaymentMethod.dart';
import 'package:flutter/material.dart';

class MobileRechargeScreen extends StatefulWidget {

  String selectedUserName;
  String selectedUserMobile;
  String selectedOperator;
  String selectedCircle;
  Map<String, dynamic> selectedPlan;

  MobileRechargeScreen({
    required this.selectedPlan,
    required this.selectedUserMobile,
    required this.selectedUserName,
    required this.selectedCircle,
    required this.selectedOperator,
    super.key});

  @override
  State<MobileRechargeScreen> createState() => _MobileRechargeScreenState();
}

class _MobileRechargeScreenState extends State<MobileRechargeScreen> {
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
        title: const Text("Mobile Recharge", style: TextStyle(
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
                      title: Text(widget.selectedUserName, style: const TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                      )),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(widget.selectedUserMobile, style: const TextStyle(
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
                                Text(widget.selectedOperator, style: const TextStyle(
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
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
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
                                Text(widget.selectedCircle, style: const TextStyle(
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
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
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
                  child: Text("₹ ${widget.selectedPlan["packageAmount"]}", style: const TextStyle(
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
                        Text("${widget.selectedPlan["data"]}", style: const TextStyle(
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
                        Text("${widget.selectedPlan["validity"]} days", style: const TextStyle(
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
                  Text("Voice: ${widget.selectedPlan["voice"]} | SMS : ${widget.selectedPlan["sms"]}", style: const TextStyle(
                    color: Color.fromRGBO(103, 103, 103, 1),
                    fontFamily: "Montserrat",
                    fontSize: 11,
                  ),),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(34, 171, 189, 1),
                            Color.fromRGBO(84, 214, 242, 1),
                          ] 
                      )
                    ),
                    child: ElevatedButton(

                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          elevation: 0
                        ),
                        onPressed: (){
                          Navigator.pop(context);
                        }, child: const Text("Change plan", style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 11,
                      fontWeight: FontWeight.bold
                    ),)
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 65,
        width: MediaQuery.of(context).size.width,
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
                  title: "Mobile Recharge",
                  paymentFor: widget.selectedPlan
              )));
            },
            child: Text(
              "Proceed to Pay".toUpperCase(),
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
