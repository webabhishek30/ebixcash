import 'package:flutter/material.dart';

class AddRequestForOrder extends StatefulWidget {

  String referenceNo;

  AddRequestForOrder({required this.referenceNo, super.key});

  @override
  State<AddRequestForOrder> createState() => _AddRequestForOrderState();
}

class _AddRequestForOrderState extends State<AddRequestForOrder> {

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
        title: const Text("Add Request", style: TextStyle(
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
              const Text(
                  "Write to us and we’ll get back to you soon. Promise!",
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(1, 1, 1, 1)
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
                      initialValue: widget.referenceNo,
                      enabled: false,
                      style: const TextStyle(
                          color: Color.fromRGBO(120, 120, 120, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          fontFamily: "Montserrat"
                      ),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromRGBO(230, 230, 230, 1),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(225, 225, 225, 1)
                              )
                          ),
                          hintText: "Reference Number",
                          hintStyle: const TextStyle(
                              color: Color.fromRGBO(120, 120, 120, 1),
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              fontFamily: "Montserrat"
                          )
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      maxLines: 5,
                      minLines: 5,
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Please enter your query';
                        }
                      },
                      style: const TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          fontFamily: "Montserrat"
                      ),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(225, 225, 225, 1)
                              )
                          ),
                          hintText: "Write your query...",
                          hintStyle: const TextStyle(
                              color: Color.fromRGBO(120, 120, 120, 1),
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              fontFamily: "Montserrat"
                          )
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      maxLines: 5,
                      minLines: 5,
                      style: const TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          fontFamily: "Montserrat"
                      ),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(225, 225, 225, 1)
                              )
                          ),
                          hintText: "Additional information",
                          hintStyle: const TextStyle(
                              color: Color.fromRGBO(120, 120, 120, 1),
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              fontFamily: "Montserrat"
                          )
                      ),
                    ),
                  ],
                )
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 65,
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

                    // Return the AlertDialog widget
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
                              "Congratulations! Your request has been accepted.",
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
                "Submit Request".toUpperCase(),
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
