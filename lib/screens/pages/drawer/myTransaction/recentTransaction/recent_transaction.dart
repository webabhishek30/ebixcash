import 'package:ebixcash/screens/pages/drawer/myTransaction/recentTransactionDetail/recent_transaction_detail.dart';
import 'package:flutter/material.dart';

class RecentTransaction extends StatefulWidget {
  const RecentTransaction({super.key});

  @override
  State<RecentTransaction> createState() => _RecentTransactionState();
}

class _RecentTransactionState extends State<RecentTransaction> {

  List recentTransactionList = [
    {
      "rechargeType" : "Mobile Recharge",
      "rechargeDate" : "18/05/2023",
      "referenceNo"  : "2345681",
      "companyLogo"  : "assets/images/reliance_jio.png"
    },
    {
      "rechargeType" : "Mobile Recharge",
      "rechargeDate" : "18/05/2023",
      "referenceNo"  : "2345682",
      "companyLogo"  : "assets/images/airtel.png"
    },
    {
      "rechargeType" : "Mobile Recharge",
      "rechargeDate" : "18/05/2023",
      "referenceNo"  : "2345683",
      "companyLogo"  : "assets/images/reliance_jio.png"
    },
    {
      "rechargeType" : "Mobile Recharge",
      "rechargeDate" : "18/05/2023",
      "referenceNo"  : "2345684",
      "companyLogo"  : "assets/images/airtel.png"
    },
    {
      "rechargeType" : "Mobile Recharge",
      "rechargeDate" : "18/05/2023",
      "referenceNo"  : "2345685",
      "companyLogo"  : "assets/images/reliance_jio.png"
    },
    {
      "rechargeType" : "Mobile Recharge",
      "rechargeDate" : "18/05/2023",
      "referenceNo"  : "2345686",
      "companyLogo"  : "assets/images/airtel.png"
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),


            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: recentTransactionList.length,
              itemBuilder: (BuildContext context, int index){
                return ListTile(
                    contentPadding: const EdgeInsets.symmetric(vertical: 10),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => RecentTransactionDetail(referenceNo: recentTransactionList[index]["referenceNo"])));
                    },
                    leading: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: Image.asset(recentTransactionList[index]["companyLogo"]),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            recentTransactionList[index]["rechargeType"],
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Montserrat",
                            color: Color.fromRGBO(1, 1, 1, 1)
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                            recentTransactionList[index]["rechargeDate"],
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Montserrat",
                                color: Color.fromRGBO(1, 1, 1, 1)
                            )
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                            "Reference No. ${recentTransactionList[index]['referenceNo']}",
                            style: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Montserrat",
                                color: Color.fromRGBO(129, 129, 129, 1)
                            )
                        ),
                      ],
                    ),
                    trailing: GestureDetector(
                          onTap: (){
                            showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context){
                                  return Container(
                                    child: Text("Hello"),
                                  );
                                }
                            );
                          },
                          child: const Icon(Icons.more_vert,
                        )
                    )
                );
              },
              separatorBuilder: (BuildContext context, int index){
                return const Divider(
                  height: 1,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
