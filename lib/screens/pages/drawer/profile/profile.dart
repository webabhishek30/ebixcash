import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  final _formKey = GlobalKey<FormState>();
  final dobController = TextEditingController();

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
        title: const Text("Profile", style: TextStyle(
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
          child: Form(
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
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: "Gender",
                              hintStyle: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(148, 148, 148, 1)
                              )
                          ),
                          validator: (value){
                            if(value!.isEmpty){
                              return "Please enter your gender.";
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: dobController,
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  onPressed: () async{
                                    final selectedDate = await showDatePicker(
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(1990),
                                      lastDate: DateTime.now(), context: context,
                                    );
                                    final month = selectedDate!.month;
                                    final year = selectedDate!.year;
                                    final date = selectedDate!.day;
                                    date < 10 ? "0$date" : "$date";
                                    month < 10 ? "0$month" : "$month";
                                    setState(() {
                                      dobController.text = "$date-$month-$year";
                                    });
                                    print(selectedDate);
                                  },
                                  padding: EdgeInsets.zero,
                                  icon: const Icon(
                                    Icons.calendar_today_outlined,
                                    size: 18,
                                  )
                              ),
                              hintText: "DOB",
                              hintStyle: const TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(148, 148, 148, 1)
                              )
                          ),
                          validator: (value){
                            if(value!.isEmpty){
                              return "Please enter your dob";
                            }
                            return null;
                          },
                        ),
                      )
                    ],
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
                        hintText: "Email Address",
                        hintStyle: const TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(148, 148, 148, 1)
                        )
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return "Please enter email address.";
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
                        hintText: "Secondary Email",
                        hintStyle: const TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(148, 148, 148, 1)
                        )
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return "Please enter secondary email.";
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
                        hintText: "PAN Number",
                        hintStyle: const TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(148, 148, 148, 1)
                        )
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return "Please enter pan no.";
                      }
                      return null;
                    },
                  ),
                ],
              )
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
