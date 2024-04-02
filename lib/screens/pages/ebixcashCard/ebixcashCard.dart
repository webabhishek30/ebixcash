import 'package:flutter/material.dart';

class EbixcashCard extends StatefulWidget {
  const EbixcashCard({super.key});

  @override
  State<EbixcashCard> createState() => _EbixcashCardState();
}

class _EbixcashCardState extends State<EbixcashCard> {
  bool cvvValue = false;
  bool enableEcommerceShopping = false;
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
        title: const Text("EbixCash Card", style: TextStyle(
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text("Congratulations! Your EbixCash virtual card is ready.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 18,
                  fontWeight: FontWeight.w600,

                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                elevation: 0,
                color: const Color.fromRGBO(245, 221, 236, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text("Prepaid"),
                          Image.asset("assets/images/logo.png", width: 87,)
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("Rahul Kumar Sharma", style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                      ),),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text("xxxx   xxxx    xxxx    1234", style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 18,
                          fontWeight: FontWeight.w600
                      )),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text("Expiry"),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text("05/24")
                                ],
                              ),
                              const SizedBox(
                                width: 40,
                              ),
                              Column(
                                children: [
                                  Text("CVV"),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  cvvValue ? Text("233") : SizedBox()
                                ],
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Switch(
                                  value: cvvValue,
                                  onChanged: (value){
                                    setState(() {
                                      cvvValue = value;
                                    });
                                  }
                              )
                            ],
                          ),
                          Image.asset("assets/images/visa.png")
                        ],
                      )
                    ],
                  ),
                ),
              ),
              TextButton(
                  onPressed: (){
                    showModalBottomSheet(
                        context: context,
                        isDismissible: false,
                        isScrollControlled: true,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25),

                            )
                        ),
                        builder: (BuildContext context){
                          return Container(
                            padding: EdgeInsets.only(
                                bottom: MediaQuery.of(context).viewInsets.bottom,
                                top: 20,
                                right: 20,
                                left: 20
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.black12
                                    ),
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.pop(context);
                                      },
                                      child: const Icon(
                                          Icons.close,
                                        color: Colors.white,
                                        size: 13,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.only(
                                            bottom: 10
                                        ),
                                        decoration: const BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(width: 1.5, color: Colors.black12)
                                            )
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text("Enter PIN", style: TextStyle(
                                              fontFamily: "Montserrat",
                                              fontSize: 16,
                                            ),),
                                            SizedBox(
                                              width: 100,
                                              child: TextFormField(
                                                decoration: const InputDecoration(
                                                    alignLabelWithHint: true,
                                                    border: InputBorder.none,
                                                    hintText: "**************",
                                                    hintStyle: TextStyle(
                                                        fontFamily: "Montserrat",
                                                        fontSize: 16,
                                                        color: Color.fromRGBO(151, 151, 151, 1)
                                                    )
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(
                                            bottom: 10
                                        ),
                                        decoration: const BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(width: 1.5, color: Colors.black12)
                                            )
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text("Confirm PIN", style: TextStyle(
                                              fontFamily: "Montserrat",
                                              fontSize: 16,
                                            ),),
                                            SizedBox(
                                              width: 100,
                                              child: TextFormField(
                                                decoration: const InputDecoration(
                                                    alignLabelWithHint: true,
                                                    border: InputBorder.none,
                                                    hintText: "**************",
                                                    hintStyle: TextStyle(
                                                        fontFamily: "Montserrat",
                                                        fontSize: 16,
                                                        color: Color.fromRGBO(151, 151, 151, 1)
                                                    )
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            height: 46,
                                            width: 108,
                                            child: TextButton(
                                                onPressed: (){
                                                  Navigator.pop(context);
                                                },
                                                child: const Text("Cancel", style: TextStyle(
                                                    fontFamily: "Montserrat",
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500
                                                ))
                                            ),
                                          ),
                                          SizedBox(
                                              height: 46,
                                              width: 136,
                                              child: ElevatedButton(
                                                  style: ButtonStyle(
                                                      shape: MaterialStatePropertyAll(
                                                          RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(23)
                                                          )
                                                      ),
                                                      backgroundColor: const MaterialStatePropertyAll(
                                                          Color.fromRGBO(185, 26, 129, 1)
                                                      )
                                                  ),
                                                  onPressed: (){
                                                    Navigator.pushNamed(context, "/ebixcashCard");
                                                  },
                                                  child: const Text("Update", style: TextStyle(
                                                      fontFamily: "Montserrat",
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w500
                                                  ),)
                                              )
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        }
                    );

                  },
                  child: const Text("Set PIN", style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500
                  ),)
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Enable the card for e-commerce payments", style: TextStyle(
                    fontSize: 12,
                    fontFamily: "Montserrat"
                  ),),
                  Switch(
                      value: enableEcommerceShopping,

                      onChanged: (value){
                        setState(() {
                          enableEcommerceShopping = value;
                        });
                      }
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: SizedBox(
                  height: 46,
                  width: 274,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(23)
                              )
                          ),
                          backgroundColor: const MaterialStatePropertyAll(
                              Color.fromRGBO(185, 26, 129, 1)
                          )
                      ),
                      onPressed: (){
                        Navigator.pushNamed(context, "/physicalCard");
                      },
                      child: const Text("Apply for Physical Card", style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 14,
                        fontWeight: FontWeight.w500
                      ),)
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
