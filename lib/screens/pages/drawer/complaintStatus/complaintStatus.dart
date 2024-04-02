import 'package:flutter/material.dart';

class ComplaintStatusScreen extends StatefulWidget {
  const ComplaintStatusScreen({super.key});

  @override
  State<ComplaintStatusScreen> createState() => _ComplaintStatusScreenState();
}

class _ComplaintStatusScreenState extends State<ComplaintStatusScreen> {
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
        title: const Text("Complaint Status", style: TextStyle(
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
        child: Table(
          border: TableBorder.all(
            color: Colors.black12
          ),
          children: const [
            TableRow(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Query", style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 16,
                        fontWeight: FontWeight.w800
                    ),),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Status", style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w800,
                    ),),
                  )
                ]
            ),
            TableRow(
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("Payment failed but amount got deducted.", style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                  ),),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("Resolved", style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(108, 208, 56, 1)
                  ),),
                )
              ]
            )
          ],
        ),
      ),
    );
  }
}
