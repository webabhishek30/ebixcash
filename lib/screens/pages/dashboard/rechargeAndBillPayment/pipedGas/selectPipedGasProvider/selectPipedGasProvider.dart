import 'package:ebixcash/screens/pages/dashboard/rechargeAndBillPayment/pipedGas/selectPipedGasProvider/selectedPipedGasPayment/selectedPipedGasPayment.dart';
import 'package:flutter/material.dart';

class SelectPipedGasProviderScreen extends StatefulWidget {

  Map<String, dynamic> selectedPipedGasProvider;

  SelectPipedGasProviderScreen({required this.selectedPipedGasProvider, super.key});

  @override
  State<SelectPipedGasProviderScreen> createState() => _SelectPipedGasProviderScreenState();
}

class _SelectPipedGasProviderScreenState extends State<SelectPipedGasProviderScreen> {

  final TextEditingController bpNumberController = TextEditingController();

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: bpNumberController,
                  decoration: InputDecoration(
                      hintText: "BP Number",
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
                  height: 10,
                ),
                const Text("Please enter your 10 digit numeric BP number", style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 10,
                    color: Color.fromRGBO(133, 132, 132, 1)
                ),)
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => SelectedPipedGasPaymentScreen(
                selectedPipedGasProvider: widget.selectedPipedGasProvider,
                bpNumber: bpNumberController.text,
              )));
            },
            child: Text(
              "Confirm".toUpperCase(),
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
