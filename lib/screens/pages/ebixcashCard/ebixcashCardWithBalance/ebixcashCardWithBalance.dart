import 'package:flutter/material.dart';

class EbixcashCardWithBalanceScreen extends StatefulWidget {
  const EbixcashCardWithBalanceScreen({super.key});

  @override
  State<EbixcashCardWithBalanceScreen> createState() => _EbixcashCardWithBalanceScreenState();
}

class _EbixcashCardWithBalanceScreenState extends State<EbixcashCardWithBalanceScreen> {

  bool cvvValue = false;
  bool cardBlockUnblock = true;
  bool enableEcommerce = false;
  bool enablePos = false;
  int amount = 0;

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
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("₹ 405", style: TextStyle(
                        fontSize: 30,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(1, 187, 166, 1)
                    )),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Wallet Balance", style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Montserrat",
                      color: Color.fromRGBO(151, 151, 151, 1)
                    ),)
                  ],
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
              ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20
                    ),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                            color: Color.fromRGBO(221, 221, 221, 1)
                        )
                      )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Card Block/Unblock", style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Montserrat"
                        ),),
                        Switch(
                            value: cardBlockUnblock,
                            onChanged: (value){
                              setState(() {
                                cardBlockUnblock = value;
                              });
                            }
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20
                    ),
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Color.fromRGBO(221, 221, 221, 1)
                            )
                        )
                    ),
                    child: InkWell(
                      onTap: (){
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
                                          const Text("Virtual Card/Physical Card", style: TextStyle(
                                            fontFamily: "Montserrat",
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500
                                          ),),
                                          
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
                                                        showDialog(
                                                            context: context,
                                                            builder: (context){
                                                              Future.delayed(const Duration(seconds: 3), () {
                                                                Navigator.of(context).pop();
                                                              });
                                                              return AlertDialog(
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(15)
                                                                ),
                                                                contentPadding: const EdgeInsets.all(40),
                                                                content: Column(
                                                                  mainAxisSize: MainAxisSize.min,
                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                  children: [
                                                                    Image.asset("assets/images/checkmark.png"),
                                                                    const SizedBox(
                                                                      height: 30,
                                                                    ),
                                                                    const Text(
                                                                      "Your request has been accepted.",
                                                                      textAlign: TextAlign.center,
                                                                      style: TextStyle(
                                                                          color: Colors.black,
                                                                          fontWeight: FontWeight.w700,
                                                                          fontSize: 16,
                                                                          fontFamily: "Montserrat"
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                              );
                                                            }
                                                        );
                                                        Future.delayed(const Duration(seconds: 4), () {
                                                          Navigator.pop(context);
                                                        });
                                                      },
                                                      child: const Text("Replace Card", style: TextStyle(
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
                      child: const Text("Card Replacement", style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Montserrat",
                          color: Color.fromRGBO(48, 183, 231, 1)
                      ),),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20
                    ),
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Color.fromRGBO(221, 221, 221, 1)
                            )
                        )
                    ),
                    child: InkWell(
                      onTap: (){
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
                              return StatefulBuilder(
                                  builder: (BuildContext context, setState){
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
                                                ListView(
                                                  shrinkWrap: true,
                                                  children: [
                                                    Container(
                                                      padding: const EdgeInsets.symmetric(
                                                          vertical: 20
                                                      ),
                                                      decoration: const BoxDecoration(
                                                          border: Border(
                                                              bottom: BorderSide(
                                                                  color: Color.fromRGBO(217, 217, 217, 1)
                                                              )
                                                          )
                                                      ),
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              const Text("E-commerce", style: TextStyle(
                                                                  fontFamily: "Montserrat",
                                                                  fontSize: 16
                                                              ),),
                                                              Switch(
                                                                  value: enableEcommerce,
                                                                  onChanged: (value){
                                                                    setState(() {
                                                                      enableEcommerce = value;
                                                                    });
                                                                  }
                                                              )
                                                            ],
                                                          ),
                                                          enableEcommerce ? SizedBox(
                                                            child: Column(
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsets.symmetric(
                                                                      horizontal: 20
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                    children: [
                                                                      Text("$amount", style: const TextStyle(
                                                                          fontSize: 14,
                                                                          fontFamily: "Montserrat",
                                                                          fontWeight: FontWeight.w600,
                                                                          color: Color.fromRGBO(48, 183, 231, 1)
                                                                      )),
                                                                      const Text("5000", style: TextStyle(
                                                                          fontSize: 14,
                                                                          fontFamily: "Montserrat",
                                                                          fontWeight: FontWeight.w600,
                                                                          color: Color.fromRGBO(48, 183, 231, 1)
                                                                      ),)
                                                                    ],
                                                                  ),
                                                                ),
                                                                Slider(
                                                                    min: 0,
                                                                    max: 5000,
                                                                    value: amount.toDouble(),
                                                                    onChanged: (value){
                                                                      setState(() {
                                                                        amount = value.toInt();
                                                                      });
                                                                    }

                                                                )
                                                              ],
                                                            ),
                                                          ) : const SizedBox()
                                                        ],
                                                      )
                                                    ),
                                                    Container(
                                                      padding: const EdgeInsets.symmetric(
                                                          vertical: 20
                                                      ),
                                                      decoration: const BoxDecoration(
                                                          border: Border(
                                                              bottom: BorderSide(
                                                                  color: Color.fromRGBO(217, 217, 217, 1)
                                                              )
                                                          )
                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          const Text("POS", style: TextStyle(
                                                              fontFamily: "Montserrat",
                                                              fontSize: 16
                                                          ),),

                                                          Switch(
                                                              value: enablePos,
                                                              onChanged: (value){
                                                                setState(() {
                                                                  enablePos = value;
                                                                });
                                                              }
                                                          )
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),

                                                const SizedBox(
                                                  height: 30,
                                                ),
                                                enableEcommerce || enablePos ? Row(
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
                                                              showDialog(
                                                                  context: context,
                                                                  builder: (context){
                                                                    Future.delayed(const Duration(seconds: 3), () {
                                                                      Navigator.of(context).pop();
                                                                    });
                                                                    return AlertDialog(
                                                                      shape: RoundedRectangleBorder(
                                                                          borderRadius: BorderRadius.circular(15)
                                                                      ),
                                                                      contentPadding: const EdgeInsets.all(40),
                                                                      content: Column(
                                                                        mainAxisSize: MainAxisSize.min,
                                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                                        children: [
                                                                          Image.asset("assets/images/checkmark.png"),
                                                                          const SizedBox(
                                                                            height: 30,
                                                                          ),
                                                                          const Text(
                                                                            "Your request has been accepted.",
                                                                            textAlign: TextAlign.center,
                                                                            style: TextStyle(
                                                                                color: Colors.black,
                                                                                fontWeight: FontWeight.w700,
                                                                                fontSize: 16,
                                                                                fontFamily: "Montserrat"
                                                                            ),
                                                                          )
                                                                        ],
                                                                      ),
                                                                    );
                                                                  }
                                                              );
                                                              Future.delayed(const Duration(seconds: 4), () {
                                                                Navigator.pop(context);
                                                              });
                                                            },
                                                            child: const Text("Update", style: TextStyle(
                                                                fontFamily: "Montserrat",
                                                                fontSize: 14,
                                                                fontWeight: FontWeight.w500
                                                            ),)
                                                        )
                                                    ),
                                                  ],
                                                ) : SizedBox(),
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
                            }
                        );
                      },
                      child: const Text("Card Usage Control", style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Montserrat",
                          color: Color.fromRGBO(48, 183, 231, 1)
                      ),),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20
                    ),
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Color.fromRGBO(221, 221, 221, 1)
                            )
                        )
                    ),
                    child: InkWell(
                      onTap: (){
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
                                                const Text("Current PIN", style: TextStyle(
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
                                                const Text("New PIN", style: TextStyle(
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
                                                        showDialog(
                                                            context: context,
                                                            builder: (context){
                                                              Future.delayed(const Duration(seconds: 3), () {
                                                                Navigator.of(context).pop();
                                                              });
                                                              return AlertDialog(
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(15)
                                                                ),
                                                                contentPadding: const EdgeInsets.all(40),
                                                                content: Column(
                                                                  mainAxisSize: MainAxisSize.min,
                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                  children: [
                                                                    Image.asset("assets/images/checkmark.png"),
                                                                    const SizedBox(
                                                                      height: 30,
                                                                    ),
                                                                    const Text(
                                                                      "Congratulations! Your PIN has been changed..",
                                                                      textAlign: TextAlign.center,
                                                                      style: TextStyle(
                                                                          color: Colors.black,
                                                                          fontWeight: FontWeight.w700,
                                                                          fontSize: 16,
                                                                          fontFamily: "Montserrat"
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                              );
                                                            }
                                                        );
                                                        Future.delayed(const Duration(seconds: 4), () {
                                                          Navigator.of(context).pop();
                                                        });
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
                      child: const Text("Manage PIN", style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Montserrat",
                          color: Color.fromRGBO(48, 183, 231, 1)
                      ),),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
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
            ],
          ),
        ),
      ),
    );
  }
}
