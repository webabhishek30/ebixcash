import 'package:ebixcash/screens/pages/dashboard/rechargeAndBillPayment/lpg/selectLpgProvider/selectLpgPayment/selectLpgPayment.dart';
import 'package:flutter/material.dart';

class SelectLpgProviderScreen extends StatefulWidget {

  Map<String, dynamic> selectLpgProvider;

  SelectLpgProviderScreen({ required this.selectLpgProvider, super.key});

  @override
  State<SelectLpgProviderScreen> createState() => _SelectLpgProviderScreenState();
}

class _SelectLpgProviderScreenState extends State<SelectLpgProviderScreen> {
  final TextEditingController mobileOrConsumerNumberController = TextEditingController();

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
        title: Text(widget.selectLpgProvider["lpgProviderName"], style: const TextStyle(
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
                  controller: mobileOrConsumerNumberController,
                  decoration: InputDecoration(
                      hintText: "Enter Mobile No./Consumer No.",
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
                const Text("Please enter your mobile number/consumer number", style: TextStyle(
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => SelectLpgPaymentScreen(
                selectLpgProvider: widget.selectLpgProvider,
                mobileOrConsumerNumber: mobileOrConsumerNumberController.text,
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
