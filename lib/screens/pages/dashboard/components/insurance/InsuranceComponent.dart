import 'package:flutter/material.dart';

import '../../../../../components/icons/insuranceIcon/InsuranceIcon.dart';

class InsuranceComponent extends StatelessWidget {
  const InsuranceComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(
                blurRadius: 25,
                color: Color.fromRGBO(149, 52, 114, 0.5)
            )
          ],
          image: const DecorationImage(
              image: AssetImage(
                  "assets/images/insurance_bg.jpg",
              ),
              fit: BoxFit.cover
          )
      ),

      child: Column(
        children: [
          const Text(
            "Insurance",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                fontFamily: "Montserrat",
                color: Colors.white
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InsuranceIcon(
                icon: "assets/images/car.png",
                title: "Car",
                btnFunc: (){
                  print("Car");
                },
              ),
              InsuranceIcon(
                icon: "assets/images/bike.png",
                title: "Bike",
                btnFunc: (){
                  print("Bike");
                },
              ),
              InsuranceIcon(
                icon: "assets/images/health.png",
                title: "Health",
                btnFunc: (){
                  print("Health");
                },
              ),
              InsuranceIcon(
                icon: "assets/images/protect.png",
                title: "Term Plan",
                btnFunc: (){
                  print("Term Plan");
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
