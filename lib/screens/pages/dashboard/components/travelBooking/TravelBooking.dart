import 'package:flutter/material.dart';

import '../../../../../components/icons/insuranceIcon/InsuranceIcon.dart';
import '../../../../../components/icons/travelBookingIcon/TravelBookingIcon.dart';

class TravelBookingComponent extends StatelessWidget {
  const TravelBookingComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
                blurRadius: 25,
                color: Color.fromRGBO(149, 52, 114, 0.5)
            )
          ],
          gradient: const LinearGradient(
              colors: [
                Color.fromRGBO(252, 196, 232, 1),
                Color.fromRGBO(255, 255, 255, 1),
              ]
          )
      ),

      child: Column(
        children: [
          const Text(
            "Travel Booking",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                fontFamily: "Montserrat",
                color: Color.fromRGBO(185, 26, 129, 1)
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TravelBookingIcon(
                icon: "assets/images/flight.png",
                title: "Flight",
                btnFunc: (){
                  print("Flight");
                },
              ),
              TravelBookingIcon(
                icon: "assets/images/bus.png",
                title: "Bus",
                btnFunc: (){
                  print("Bus");
                },
              ),
              TravelBookingIcon(
                icon: "assets/images/hotel.png",
                title: "Hotel",
                btnFunc: (){
                  print("Hotel");
                },
              ),
              TravelBookingIcon(
                icon: "assets/images/holiday.png",
                title: "Holiday",
                btnFunc: (){
                  print("Holiday");
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
