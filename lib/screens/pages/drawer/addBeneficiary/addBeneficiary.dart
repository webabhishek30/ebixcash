import 'package:flutter/material.dart';

class AddBeneficiaryScreen extends StatefulWidget {
  const AddBeneficiaryScreen({super.key});

  @override
  State<AddBeneficiaryScreen> createState() => _AddBeneficiaryScreenState();
}

class _AddBeneficiaryScreenState extends State<AddBeneficiaryScreen> with TickerProviderStateMixin{

  late final TabController _tabController;
  final _formKey = GlobalKey<FormState>();

  int _selectedValue = 1;

  List payeeList = [
    {
      "name" : "Prawin Jha",
      "mobileNo" : "9910686363",
      "value" : 1,
    },
    {
      "name" : "Prawin Jha",
      "mobileNo" : "9910686363",
      "value" : 2,
    },
    {
      "name" : "Prawin Jha",
      "mobileNo" : "9910686363",
      "value" : 3,
    }
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {
    });
  }

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
        title: const Text("Add Beneficiary", style: TextStyle(
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
        physics: const ScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height - 80,
          child: DefaultTabController(
            length: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TabBar(
                    controller: _tabController,
                    indicatorColor: const Color.fromRGBO(169, 45, 140, 1),
                    labelStyle: const TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                    ),
                    labelColor: const Color.fromRGBO(169, 45, 140, 1),
                    unselectedLabelColor: const Color.fromRGBO(155, 153, 155, 1),

                    tabs: [
                      Tab(
                        child: Text("Add New Payee", style: TextStyle(
                          color: _tabController.index == 0 ? Color.fromRGBO(169, 45, 140, 1) : Color.fromRGBO(155, 153, 155, 1)
                        ),),
                      ),
                      Tab(
                        child: Text("Payee List", style: TextStyle(
                            color: _tabController.index == 1 ? Color.fromRGBO(169, 45, 140, 1) : Color.fromRGBO(155, 153, 155, 1)
                        )),
                      )
                    ]
                ),
                Expanded(
                  child: TabBarView(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 20
                          ),
                          child: Column(
                            children: [
                              Form(
                                  key: _formKey,
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        decoration: const InputDecoration(
                                            hintText: "Account Number",
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
                                            hintText: "Account Holder’s Name",
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
                                              child: const Text("Find IFSC", style: TextStyle(
                                                  fontFamily: "Montserrat",
                                                  fontSize: 12,
                                                  color: Color.fromRGBO(48, 183, 231, 1)
                                              ),),
                                            ),
                                            hintText: "IFSC",
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
                                              child: const Text("Optional", style: TextStyle(
                                                  fontFamily: "Montserrat",
                                                  fontSize: 12,
                                                  color: Color.fromRGBO(48, 183, 231, 1)
                                              ),),
                                            ),
                                            hintText: "Remarks",
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
                                    ],
                                  )
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 20
                          ),
                          child: ListView.separated(
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context, int index){
                                return RadioListTile(
                                  value: payeeList[index]["value"],
                                  title: Text(payeeList[index]["name"]),
                                  subtitle: Text(payeeList[index]["mobileNo"]),
                                  groupValue: _selectedValue,
                                  onChanged: (value){
                                    setState(() {
                                      _selectedValue = value;
                                    });
                                  },
                                );
                              },
                              separatorBuilder: (BuildContext context, int index){
                                return const Divider(
                                  color: Colors.black,
                                );
                              },
                              itemCount: payeeList.length
                          ),
                        )
                      ]
                  ),
                )
              ],
            )
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 65,
        width: MediaQuery.of(context).size.width,
        child: _tabController.index == 0 ? ElevatedButton(
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
              "Add Beneficiary".toUpperCase(),
              style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  fontFamily: "Montserrat"
              ),
            )
        ) : Row(
          children: [
            Expanded(
              child: SizedBox(
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
                      "Send Money".toUpperCase(),
                      style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          fontFamily: "Montserrat"
                      ),
                    )
                ),
              ),
            ),
            SizedBox(
              width: 1,
            ),
            Expanded(
              child: SizedBox(
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
                                    "Congratulations! You have successfully added the payee.",
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
                      "Delete Payee".toUpperCase(),
                      style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          fontFamily: "Montserrat"
                      ),
                    )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
