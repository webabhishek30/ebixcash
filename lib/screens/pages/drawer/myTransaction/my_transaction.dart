import 'package:ebixcash/screens/pages/drawer/myTransaction/filterTransaction/categories/filter_by_categories.dart';
import 'package:ebixcash/screens/pages/drawer/myTransaction/filterTransaction/filter/filter_by_status.dart';
import 'package:ebixcash/screens/pages/drawer/myTransaction/recentTransaction/recent_transaction.dart';
import 'package:flutter/material.dart';

import 'filterTransaction/month/filter_by_month.dart';

class MyTransaction extends StatefulWidget {
  const MyTransaction({super.key});

  @override
  State<MyTransaction> createState() => _MyTransactionState();
}

class _MyTransactionState extends State<MyTransaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        title: const Text("My Transactions", style: TextStyle(
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
        child: Column(
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color.fromRGBO(225, 225, 225, 1),
                ),
                borderRadius: BorderRadius.circular(5)
              ),
              child: const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search by name, number or UPI ID",
                  hintStyle: TextStyle(
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color.fromRGBO(120, 120, 120, 1)
                  ),
                  border: InputBorder.none
                ),

              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          )
                        ),
                        builder: (BuildContext context){
                          return const FilterByMonth();
                        }
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Color.fromRGBO(221, 221, 221, 1)
                            )
                        )
                    ),
                    child: const Row(
                      children: [
                        Text("Month", style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w400
                        ),),
                        Icon(
                            Icons.arrow_drop_down,
                          color: Color.fromRGBO(102, 102, 102, 1),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            )
                        ),
                        builder: (BuildContext context){
                          return const FilterByCategories();
                        }
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Color.fromRGBO(221, 221, 221, 1)
                            )
                        )
                    ),
                    child: const Row(
                      children: [
                        Text("Categories", style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w400
                        )),
                        Icon(
                            Icons.arrow_drop_down,
                          color: Color.fromRGBO(102, 102, 102, 1),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            )
                        ),
                        builder: (BuildContext context){
                          return const FilterByStatus();
                        }
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Color.fromRGBO(221, 221, 221, 1)
                            )
                        )
                    ),
                    child: const Row(
                      children: [
                        Text("Filters", style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w400
                        )),
                        Icon(
                            Icons.arrow_drop_down,
                          color: Color.fromRGBO(102, 102, 102, 1),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Text("Recent Transaction",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Montserrat"
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                height: 1,
                width: 88,
                color: const Color.fromRGBO(112, 112, 112, 1),
              ),
            ),

            RecentTransaction()
          ],
        ),
      ),
    );
  }
}
