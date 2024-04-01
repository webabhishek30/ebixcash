import 'package:flutter/material.dart';

class Buy extends StatefulWidget {

  Map<String, dynamic> buyCartData;

  Buy({required this.buyCartData, super.key});

  @override
  State<Buy> createState() => _BuyState();
}

class _BuyState extends State<Buy> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          side: const BorderSide(
              color: Color.fromRGBO(225, 225, 225, 1)
          )
      ),
      child: Column(
        children: [
          Container(
              padding: const EdgeInsets.all(20),
              child: Table(
                children: [
                  TableRow(
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color.fromRGBO(231, 231, 231, 1)
                              )
                          )
                      ),
                      children: [
                        const TableCell(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            child: Text("Product", style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Montserrat",
                                color: Color.fromRGBO(120, 120, 120, 1)
                            ),),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Text(
                                widget.buyCartData["product"],
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontFamily: "Montserrat",
                                    color: Color.fromRGBO(120, 120, 120, 1)
                                ),
                                textAlign: TextAlign.right
                            ),
                          ),
                        ),
                      ]
                  ),
                  TableRow(
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color.fromRGBO(231, 231, 231, 1)
                              )
                          )
                      ),
                      children: [
                        const TableCell(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            child: Text("Purpose of Travel", style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Montserrat",
                                color: Color.fromRGBO(120, 120, 120, 1)
                            ),),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Text(
                                widget.buyCartData["purposeOfTravel"],
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontFamily: "Montserrat",
                                    color: Color.fromRGBO(120, 120, 120, 1)
                                ),
                                textAlign: TextAlign.right
                            ),
                          ),
                        ),
                      ]
                  ),
                  TableRow(
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color.fromRGBO(231, 231, 231, 1)
                              )
                          )
                      ),
                      children: [
                        const TableCell(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            child: Text("Traveller", style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Montserrat",
                                color: Color.fromRGBO(120, 120, 120, 1)
                            ),),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Text(
                                widget.buyCartData["traveller"],
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontFamily: "Montserrat",
                                    color: Color.fromRGBO(120, 120, 120, 1)
                                ),
                                textAlign: TextAlign.right
                            ),
                          ),
                        ),
                      ]
                  ),
                  TableRow(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color.fromRGBO(231, 231, 231, 1)
                              )
                          )
                      ),
                      children: [
                        TableCell(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            child: Text("Currency", style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Montserrat",
                                color: Color.fromRGBO(120, 120, 120, 1)
                            ),),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            child: Text(
                                widget.buyCartData["currency"],
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "Montserrat",
                                    color: Color.fromRGBO(120, 120, 120, 1)
                                ),
                                textAlign: TextAlign.right
                            ),
                          ),
                        ),
                      ]
                  ),
                  TableRow(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color.fromRGBO(231, 231, 231, 1)
                              )
                          )
                      ),
                      children: [
                        TableCell(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            child: Text("Forex Amount", style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Montserrat",
                                color: Color.fromRGBO(120, 120, 120, 1)
                            ),),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            child: Text(
                                widget.buyCartData["forexAmount"],
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "Montserrat",
                                    color: Color.fromRGBO(120, 120, 120, 1)
                                ),
                                textAlign: TextAlign.right
                            ),
                          ),
                        ),
                      ]
                  ),
                  TableRow(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color.fromRGBO(231, 231, 231, 1)
                              )
                          )
                      ),
                      children: [
                        TableCell(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            child: Text("Amount (INR)", style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Montserrat",
                                color: Color.fromRGBO(120, 120, 120, 1)
                            ),),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            child: Text(
                                "₹ ${widget.buyCartData["amount"]}",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "Montserrat",
                                    color: Color.fromRGBO(120, 120, 120, 1)
                                ),
                                textAlign: TextAlign.right
                            ),
                          ),
                        ),
                      ]
                  ),
                ],
              )
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5)
                ),
                gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(48, 183, 231, 1),
                      Color.fromRGBO(48, 183, 231, 0.63),
                    ]
                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("1 USD = ₹ 80.19", style: TextStyle(
                    fontFamily: "Montserrat",
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w700
                ),),
                Container(
                  child: Row(
                    children: [
                      SizedBox(
                        height: 25,
                        child: ElevatedButton(
                            onPressed: (){

                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                elevation: 0,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 2, horizontal: 10),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)
                                )
                            ),
                            child: const Row(
                              children: [
                                Icon(Icons.edit, size: 15, color: Color.fromRGBO(50, 50, 50, 1)),
                                SizedBox(width: 5,),
                                Text("Edit", style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 10,
                                    color: Color.fromRGBO(50, 50, 50, 1)
                                ),)
                              ],
                            )
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        height: 25,
                        child: ElevatedButton(
                            onPressed: (){
                              setState(() {
                                showDialog(context: context, builder: (BuildContext context) {
                                  return Center(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 250,
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 20
                                      ),
                                      padding: const EdgeInsets.all(40),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          color: Colors.white
                                      ),
                                      child: Column(
                                        children: [
                                          const DefaultTextStyle(
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontFamily: "Montserrat",
                                                fontWeight: FontWeight.w700,
                                                color: Color.fromRGBO(24, 24, 24, 1)
                                            ),
                                            child: Text(
                                              "Please Confirm, if you want to remove the Product",
                                              textAlign: TextAlign.center,
                                              softWrap: true,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 80,
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              SizedBox(
                                                height: 46,
                                                child: TextButton(
                                                    style: ButtonStyle(
                                                        padding: const MaterialStatePropertyAll<EdgeInsetsGeometry>(
                                                            EdgeInsets.symmetric(
                                                                horizontal: 40
                                                            )
                                                        ),
                                                        shape: MaterialStatePropertyAll(
                                                            RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.circular(25)
                                                            )
                                                        )
                                                    ),
                                                    onPressed: (){
                                                      Navigator.pop(context);
                                                    },
                                                    child: const Text(
                                                      "Cancel",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontFamily: "Montserrat",
                                                          fontWeight: FontWeight.w600
                                                      ),
                                                    )
                                                ),
                                              ),
                                              SizedBox(
                                                height: 46,
                                                child: ElevatedButton(
                                                    style: ButtonStyle(
                                                        padding: const MaterialStatePropertyAll<EdgeInsetsGeometry>(
                                                            EdgeInsets.symmetric(
                                                                horizontal: 40
                                                            )
                                                        ),
                                                        backgroundColor: const MaterialStatePropertyAll<Color>(
                                                            Color.fromRGBO(185, 26, 129, 1)
                                                        ),
                                                        shape: MaterialStatePropertyAll(
                                                            RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.circular(25)
                                                            )
                                                        )
                                                    ),
                                                    onPressed: (){

                                                    },
                                                    child: const Text(
                                                      "Confirm",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.white,
                                                          fontFamily: "Montserrat"
                                                      ),
                                                    )
                                                ),
                                              )
                                            ],
                                          )

                                        ],
                                      ),
                                    ),
                                  );
                                });
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                elevation: 0,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 2, horizontal: 10),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)
                                )
                            ),
                            child: const Row(
                              children: [
                                Icon(Icons.cancel_outlined, size: 15, color: Color.fromRGBO(50, 50, 50, 1)),
                                SizedBox(width: 10,),
                                Text("Remove", style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 10,
                                    color: Color.fromRGBO(50, 50, 50, 1)
                                ),)
                              ],
                            )
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
