import 'package:ebixcash/screens/pages/dashboard/rechargeAndBillPayment/fastagRecharge/selectedFatagRecharge/selectFastagPlan/selectFastagPlan.dart';
import 'package:flutter/material.dart';

import '../../dthRecharge/selectedDthProvider/selectDthPlan/selectDthPlan.dart';

class SelectedFastagProviderScreen extends StatefulWidget {

  Map<String, dynamic> selectedFastagProvider;

  SelectedFastagProviderScreen({required this.selectedFastagProvider, super.key});

  @override
  State<SelectedFastagProviderScreen> createState() => _SelectedFastagProviderScreenState();
}

class _SelectedFastagProviderScreenState extends State<SelectedFastagProviderScreen> {

  final TextEditingController vehicleNumberController = TextEditingController();

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
        title: Text(widget.selectedFastagProvider["fastagProviderName"], style: const TextStyle(
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
          child: TextFormField(
            controller: vehicleNumberController,
            decoration: InputDecoration(
                hintText: "vehicle registered number",
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => SelectFastagPlanScreen(
                selectedFastagProvider: widget.selectedFastagProvider,
                vehicleNumber: vehicleNumberController.text,
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
