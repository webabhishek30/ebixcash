import 'package:ebixcash/screens/pages/drawer/helpSupport/myRequest/myRequestDetail/my_request_detail.dart';
import 'package:flutter/material.dart';
import '../../myTransaction/recentTransactionDetail/recent_transaction_detail.dart';
import 'addRequest/add_request.dart';
import 'allRecentOrder/all_recent_order.dart';

class HelpWithRecentOrders extends StatefulWidget {
  const HelpWithRecentOrders({super.key});

  @override
  State<HelpWithRecentOrders> createState() => _HelpWithRecentOrdersState();
}

class _HelpWithRecentOrdersState extends State<HelpWithRecentOrders> {

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
    return Column(
      children: [
        const Text(
          "Need Help with Recent Orders",
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
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 2,
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AddRequestForOrder(referenceNo: recentTransactionList[index]['referenceNo'])));
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
        ),

        TextButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const AllRecentOrder()));
            },
            child: const Text(
                "View All",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                fontFamily: "Montserrat",
                color: Color.fromRGBO(48, 183, 231, 1)
              ),
            )
        )
      ],
    );
  }
}
