import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateUpiScreen extends StatefulWidget {
  const CreateUpiScreen({super.key});

  @override
  State<CreateUpiScreen> createState() => _CreateUpiScreenState();
}

class _CreateUpiScreenState extends State<CreateUpiScreen> {
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
        title: const Text("Create UPI", style: TextStyle(
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
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: const BorderSide(
                        color: Color.fromRGBO(225, 225, 225, 1)
                    )
                ),
                child: Container(
                  padding: const EdgeInsets.all(40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(colors: [
                              Color.fromRGBO(252, 196, 232, 1),
                              Color.fromRGBO(255, 255, 255, 1)
                            ]),
                            borderRadius: BorderRadius.circular(25)
                        ),
                        child: Image.asset("assets/images/upi.png"),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Your UPI ID", style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Montserrat",
                              color: Color.fromRGBO(1, 1, 1, 1)
                          ),),

                          SizedBox(
                            width: 215,
                            child: TextFormField(
                              initialValue: "9826800000@ebixcash",
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Montserrat"
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text("OR", style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black
              ),),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                width: 88,
                child: Divider(
                  color: Color.fromRGBO(112, 112, 112, 1),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: (){
                    Navigator.pushNamed(context, "/createYourOwnUpi");
                  },
                  child: const Text("Create your own UPI", style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(48, 183, 231, 1)
                  ),)
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 65,
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
            style: const ButtonStyle(
                shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero
                    )
                ),
                backgroundColor: MaterialStatePropertyAll(
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
                            "Your request has been submitted! You will receive the VKYC link on SMS.",
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
            child: Text(
              "Create Upi".toUpperCase(),
              style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  fontFamily: "Montserrat"
              ),
            )
        ),
      ),
    );
  }
}
