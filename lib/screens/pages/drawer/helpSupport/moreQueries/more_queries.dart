import 'package:flutter/material.dart';

class MoreQueries extends StatefulWidget {
  const MoreQueries({super.key});

  @override
  State<MoreQueries> createState() => _MoreQueriesState();
}

class _MoreQueriesState extends State<MoreQueries> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "For More Queries",
          style: TextStyle(
              fontSize: 18,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w600,
              color: Colors.black
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          width: 88,
          height: 1,
          color: const Color.fromRGBO(112, 112, 112, 1),
        ),
        const SizedBox(
          height: 15,
        ),
        ListTile(
          onTap: (){
            Navigator.pushNamed(context, "/contactus");
          },
          contentPadding: EdgeInsets.zero,
          title: const Text(
              "Contact Us",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(1, 1, 1, 1),
              fontFamily: "Montserrat",
              fontSize: 16
            ),
          ),
          leading: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(240, 240, 240, 1),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Image.asset("assets/images/contactus-headphone.png"),
          ),
        ),
        Container(
          color: const Color.fromRGBO(221, 221, 221, 1),
          height: 1,
          margin: const EdgeInsets.symmetric(vertical: 10),
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: const Text(
            "Call us",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(1, 1, 1, 1),
                fontFamily: "Montserrat",
                fontSize: 16
            ),
          ),
          leading: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(240, 240, 240, 1),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Image.asset("assets/images/call.png"),
          ),
        ),
        Container(
          color: const Color.fromRGBO(221, 221, 221, 1),
          height: 1,
          margin: const EdgeInsets.symmetric(vertical: 10),
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: const Text(
            "Chat with Us",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(1, 1, 1, 1),
                fontFamily: "Montserrat",
                fontSize: 16
            ),
          ),
          leading: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(240, 240, 240, 1),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Image.asset("assets/images/chat.png"),
          ),
        ),
        Container(
          color: const Color.fromRGBO(221, 221, 221, 1),
          height: 1,
          margin: const EdgeInsets.symmetric(vertical: 10),
        ),
      ],
    );
  }
}
