import 'package:ebixcash/screens/pages/dashboard/components/travelOffer/travelOfferCard/TravelOfferCard.dart';
import 'package:flutter/material.dart';

class TravelOffer extends StatefulWidget {
  const TravelOffer({Key? key}) : super(key: key);

  @override
  State<TravelOffer> createState() => _TravelOfferState();
}

class _TravelOfferState extends State<TravelOffer> {


  List offers = [
    {
      "offerTitle" : "Flat Rs. 500 OFF",
      "offerCode" : "VIAMBK500",
      "offerCaption" : "on your flight booking",
    },
    {
      "offerTitle" : "Flat Rs. 500 OFF",
      "offerCode" : "VIAMBK500",
      "offerCaption" : "on your flight booking",
    },
    {
      "offerTitle" : "Flat Rs. 500 OFF",
      "offerCode" : "VIAMBK500",
      "offerCaption" : "on your flight booking",
    },
    {
      "offerTitle" : "Flat Rs. 500 OFF",
      "offerCode" : "VIAMBK500",
      "offerCaption" : "on your flight booking",
    },
    {
      "offerTitle" : "Flat Rs. 500 OFF",
      "offerCode" : "VIAMBK500",
      "offerCaption" : "on your flight booking",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
            "Travel Offers",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            fontFamily: "Montserrat",
            color: Colors.black
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Center(
          child: SizedBox(
              width: 88,
              child: Divider(
                color: Color.fromRGBO(112, 112, 112, 1),
              )
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 130,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: offers.length,
              itemBuilder: (context, index){
                return Container(
                  margin: EdgeInsets.only(right: index < offers.length - 1 ? 10 : 0),
                  child: TravelOfferCard(
                    offerTitle: offers[index]["offerTitle"],
                    offerCode: offers[index]["offerCode"],
                    offerCaption: offers[index]["offerCaption"],
                  ),
                );
              }
          ),
        ),
      ],
    );
  }
}
