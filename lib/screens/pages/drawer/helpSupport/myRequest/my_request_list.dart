import 'package:ebixcash/screens/pages/drawer/helpSupport/myRequest/myRequestDetail/my_request_detail.dart';
import 'package:flutter/material.dart';

class MyRequestsList extends StatefulWidget {
  const MyRequestsList({super.key});

  @override
  State<MyRequestsList> createState() => _MyRequestsListState();
}

class _MyRequestsListState extends State<MyRequestsList> {

  List myRequestList = [
    {
      "title" : "Money deducted, recharge failed.",
      "icon" : "assets/images/reliance_jio.png",
      "date": "10/04/2023",
      "status": "Resolved"
    },
    {
      "title" : "Money deducted, recharge failed.",
      "icon" : "assets/images/reliance_jio.png",
      "date": "10/04/2023",
      "status": "Resolved"
    },
    {
      "title" : "Money deducted, recharge failed.",
      "icon" : "assets/images/reliance_jio.png",
      "date": "10/04/2023",
      "status": "Resolved"
    },
    {
      "title" : "Money deducted, recharge failed.",
      "icon" : "assets/images/reliance_jio.png",
      "date": "10/04/2023",
      "status": "Resolved"
    },
    {
      "title" : "Money deducted, recharge failed.",
      "icon" : "assets/images/reliance_jio.png",
      "date": "10/04/2023",
      "status": "Pending"
    },
    {
      "title" : "Money deducted, recharge failed.",
      "icon" : "assets/images/reliance_jio.png",
      "date": "10/04/2023",
      "status": "Resolved"
    },
    {
      "title" : "Money deducted, recharge pending.",
      "icon" : "assets/images/airtel.png",
      "date": "10/04/2023",
      "status": "Pending"
    },
    {
      "title" : "Money deducted, recharge failed.",
      "icon" : "assets/images/reliance_jio.png",
      "date": "10/04/2023",
      "status": "Resolved"
    },
    {
      "title" : "Money deducted, recharge failed.",
      "icon" : "assets/images/reliance_jio.png",
      "date": "10/04/2023",
      "status": "Pending"
    },
    {
      "title" : "Money deducted, recharge failed.",
      "icon" : "assets/images/reliance_jio.png",
      "date": "10/04/2023",
      "status": "Resolved"
    },
    {
      "title" : "Money deducted, recharge failed.",
      "icon" : "assets/images/reliance_jio.png",
      "date": "10/04/2023",
      "status": "Resolved"
    },
    {
      "title" : "Money deducted, recharge failed.",
      "icon" : "assets/images/reliance_jio.png",
      "date": "10/04/2023",
      "status": "Resolved"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemCount: myRequestList.length,
      itemBuilder: (BuildContext context, int index){

        final status = myRequestList[index]["status"];

        return ListTile(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyRequestDetail(myRequestList[index])));
          },
          contentPadding: EdgeInsets.zero,
          leading: Image.asset(myRequestList[index]["icon"]),
          title: Text(myRequestList[index]["title"], style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: "Montserrat",
              color: Colors.black
          ),),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  myRequestList[index]["date"],
                style: const TextStyle(
                  fontSize: 10,
                  fontFamily: "Montserrat",
                  color: Color.fromRGBO(129, 129, 129, 1)
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(status,
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 10,
                  color:
                      status == "Pending" ?
                      const Color.fromRGBO(255, 95, 90, 1) :
                      const Color.fromRGBO(124, 187, 50, 1)
                ),
              )
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index){
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Divider(
            height: 1,
          ),
        );
      },
    );
  }
}
