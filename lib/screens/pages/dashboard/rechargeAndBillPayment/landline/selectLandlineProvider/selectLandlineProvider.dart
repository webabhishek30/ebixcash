import 'package:ebixcash/screens/pages/dashboard/rechargeAndBillPayment/landline/selectLandlineProvider/selectLandlinePayment/selectLandlinePayment.dart';
import 'package:flutter/material.dart';

class SelectLandlineProviderScreen extends StatefulWidget {

  Map<String, dynamic> selectLandlineProvider;

  SelectLandlineProviderScreen({ required this.selectLandlineProvider, super.key});

  @override
  State<SelectLandlineProviderScreen> createState() => _SelectLandlineProviderScreenState();
}

class _SelectLandlineProviderScreenState extends State<SelectLandlineProviderScreen> {
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
        title: Text(widget.selectLandlineProvider["landlineProviderName"], style: const TextStyle(
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
                      hintText: "Account Number",
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
                const Text("Please enter your valid account number", style: TextStyle(
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => SelectLandlinePaymentScreen(
                selectLandlineProvider: widget.selectLandlineProvider,
                accountNumber: mobileOrConsumerNumberController.text,
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
