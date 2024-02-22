import 'package:flutter/material.dart';

class MyRequestDetail extends StatefulWidget {

  Map<String, String> requestList;

  MyRequestDetail( this.requestList, {super.key});

  @override
  State<MyRequestDetail> createState() => _MyRequestDetailState();
}

class _MyRequestDetailState extends State<MyRequestDetail> {



  @override
  Widget build(BuildContext context) {
    final status = widget.requestList["status"];
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
        title: Text(widget.requestList["title"]!, style: const TextStyle(
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
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color.fromRGBO(225, 225, 225, 1),
                ),
                borderRadius: BorderRadius.circular(5)
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                          "Recharge Amount",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Montserrat",
                          color: Color.fromRGBO(1, 1, 1, 1)
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Text(
                              "₹ 749",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Montserrat",
                                color: Color.fromRGBO(1, 1, 1, 1)
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          status == "Pending" ?
                          Image.asset("assets/images/pending.png") :
                          Image.asset("assets/images/success_icon.png")
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      RichText(
                          text: TextSpan(
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: "Montserrat"
                            ),
                            children: [
                              TextSpan(
                                text: "Status : ",
                                children: [
                                    TextSpan(
                                      text: status,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: status == "Failed" ?
                                        const Color.fromRGBO(235, 0, 27, 1) :
                                        status == "Pending" ?
                                        const Color.fromRGBO(255, 95, 90, 1) :
                                        const Color.fromRGBO(124, 187, 50, 1)
                                      ),
                                    )

                                ]
                              )
                            ]
                          )
                      )
                    ],
                  ),
                ),
                const Divider(
                  height: 1,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Request Type",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Montserrat",
                            color: Color.fromRGBO(1, 1, 1, 1)
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 150,
                            child: Text(
                              widget.requestList["title"]!,
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Montserrat",
                                  color: Color.fromRGBO(1, 1, 1, 1)
                              ),
                            ),
                          ),
                          Image.asset(widget.requestList["icon"]!)
                        ],
                      ),
                    ],
                  ),
                ),
                const Divider(
                  height: 1,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "From",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Montserrat",
                            color: Color.fromRGBO(1, 1, 1, 1)
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 150,
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Rahul Sharma",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Montserrat",
                                      color: Color.fromRGBO(1, 1, 1, 1)
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                    "Wallet Payment",
                                  style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Paid at: 02:05 PM, 25 Jan 2024",
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Order ID: 2234567789",
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400
                                  ),
                                )
                              ],
                            )
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: CircleAvatar(
                              child: Image.asset("assets/images/user_thumbnail.jpg", fit: BoxFit.cover,),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
