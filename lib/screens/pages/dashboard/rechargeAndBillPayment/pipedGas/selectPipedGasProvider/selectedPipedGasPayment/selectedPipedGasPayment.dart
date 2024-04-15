import 'package:flutter/material.dart';

import '../../../../../choosePaymentMethod/choosePaymentMethod.dart';

class SelectedPipedGasPaymentScreen extends StatefulWidget {

  Map<String, dynamic> selectedPipedGasProvider;
  String bpNumber;

  SelectedPipedGasPaymentScreen({required this.selectedPipedGasProvider, required this.bpNumber, super.key});

  @override
  State<SelectedPipedGasPaymentScreen> createState() => _SelectedPipedGasPaymentScreenState();
}

class _SelectedPipedGasPaymentScreenState extends State<SelectedPipedGasPaymentScreen> {

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
        title: Text(widget.selectedPipedGasProvider["pipedGasProviderName"], style: const TextStyle(
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
                        child: Image.asset(widget.selectedPipedGasProvider["pipedGasProviderLogo"]),
                      ),
                      title: Text(widget.selectedPipedGasProvider["pipedGasProviderName"], style: const TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                      ),),
                      subtitle: Text(widget.bpNumber, style: const TextStyle(
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
                    const SizedBox(
                      height: 10,
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
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        controller: amountController,
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(vertical: 5),
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
                    const Text("Due date 12 September, 2022", style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 10,
                        color: Color.fromRGBO(255, 0, 0, 1)
                    ),)
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
                  title: 'Pay Pipped Gas Bill',
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
