import 'package:flutter/material.dart';

class PhysicalCard extends StatefulWidget {
  const PhysicalCard({super.key});

  @override
  State<PhysicalCard> createState() => _PhysicalCardState();
}

class _PhysicalCardState extends State<PhysicalCard> {
  bool cvvValue = false;
  final _formKey = GlobalKey<FormState>();
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
        title: const Text("Add Details", style: TextStyle(
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
              const SizedBox(
                height: 20,
              ),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "First Name",
                            hintStyle: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(148, 148, 148, 1)
                            )
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return "Please enter first name.";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Middle Name",
                            hintStyle: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(148, 148, 148, 1)
                            )
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Last Name",
                            hintStyle: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(148, 148, 148, 1)
                            )
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return "Please enter last name.";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            suffix: InkWell(
                              onTap: (){

                              },
                              child: const Text("Edit", style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 12,
                                  color: Color.fromRGBO(48, 183, 231, 1)
                              ),),
                            ),
                            hintText: "Address",
                            hintStyle: const TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(148, 148, 148, 1)
                            )
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return "Please enter your address.";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Contact No.",
                            hintStyle: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(148, 148, 148, 1)
                            )
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return "Please enter contact no.";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      RichText(
                          text: const TextSpan(
                            text: "You will be charged ",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Montserrat",
                              color: Colors.black
                            ),
                            children: [
                              TextSpan(
                                text: "₹ 100",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600
                                )
                              ),
                              TextSpan(
                                text: " for physical card. "
                              )
                            ]
                          )
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
                                final isValid = _formKey.currentState?.validate();
                                if(!isValid!){
                                  return;
                                }
                                _formKey.currentState?.save();
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
                                              "Congratulations! Your request has been accepted. You will receive your physical card within 2-3 days.",
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
                                  Navigator.pushNamed(context, "/ebixcashCardWithBalance");
                                });
                              },
                              child: const Text("Apply Now", style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500
                              ),)
                          )
                      ),
                    ],
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
