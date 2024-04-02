import 'package:flutter/material.dart';

class SelectDthPlanScreen extends StatefulWidget {

  Map<String, dynamic> selectedDthProvider;
  String subscriberNumber;

  SelectDthPlanScreen({required this.selectedDthProvider, required this.subscriberNumber, super.key});

  @override
  State<SelectDthPlanScreen> createState() => _SelectDthPlanScreenState();
}

class _SelectDthPlanScreenState extends State<SelectDthPlanScreen> {
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
        title: Text(widget.selectedDthProvider["dthProviderName"], style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontFamily: "Montserrat",
            color: Colors.black
        ),),
        centerTitle: true,
        actions: [
          Center(
              child: Image.asset("assets/images/BBPS.png")
          ),
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, "/dashboard");
            }, icon: Image.asset("assets/images/dashboard.png"), color: Colors.black,)
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
                side: const BorderSide(
                    color: Color.fromRGBO(225, 225, 225, 1)
                ),
                borderRadius: BorderRadius.circular(5)
            ),
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    titleAlignment: ListTileTitleAlignment.top,
                    leading: SizedBox(
                      width: 50,
                      height: 50,
                      child: Image.asset("assets/images/tata_play.png"),
                    ),
                    title: Text(widget.selectedDthProvider["dthProviderName"], style: const TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                    ),),
                    subtitle: Text(widget.subscriberNumber, style: const TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 16,
                    )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.currency_rupee,
                          size: 18,
                          color: Colors.black,
                        ),
                        hintText: "Enter Amount",
                        hintStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Montserrat"
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)
                        )
                    ),

                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("Recommended", style: TextStyle(
                    fontSize: 12,
                    fontFamily: "Montserrat",
                  ),),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          padding: const EdgeInsets.all(1),
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(colors: [
                                Color.fromRGBO(102, 84, 159, 1),
                                Color.fromRGBO(189, 34, 135, 1),
                              ]
                              ),
                              borderRadius: BorderRadius.circular(25)
                          ),
                          child: ElevatedButton(

                              onPressed: (){

                              },
                              style: ButtonStyle(
                                  elevation: const MaterialStatePropertyAll(0),

                                  backgroundColor: const MaterialStatePropertyAll(
                                      Colors.white
                                  ),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25),
                                      )
                                  )
                              ),
                              child: const Text("₹ 300", style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: "Montserrat",
                                  color: Color.fromRGBO(185, 26, 129, 1)
                              ),)
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 30,
                          padding: const EdgeInsets.all(1),
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(colors: [
                                Color.fromRGBO(102, 84, 159, 1),
                                Color.fromRGBO(189, 34, 135, 1),
                              ]
                              ),
                              borderRadius: BorderRadius.circular(25)
                          ),
                          child: ElevatedButton(

                              onPressed: (){

                              },
                              style: ButtonStyle(
                                  elevation: const MaterialStatePropertyAll(0),

                                  backgroundColor: const MaterialStatePropertyAll(
                                      Colors.white
                                  ),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25),
                                      )
                                  )
                              ),
                              child: const Text("₹ 500", style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: "Montserrat",
                                  color: Color.fromRGBO(185, 26, 129, 1)
                              ),)
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 30,
                          padding: const EdgeInsets.all(1),
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(colors: [
                                Color.fromRGBO(102, 84, 159, 1),
                                Color.fromRGBO(189, 34, 135, 1),
                              ]
                              ),
                              borderRadius: BorderRadius.circular(25)
                          ),
                          child: ElevatedButton(

                              onPressed: (){

                              },
                              style: ButtonStyle(
                                  elevation: const MaterialStatePropertyAll(0),

                                  backgroundColor: const MaterialStatePropertyAll(
                                      Colors.white
                                  ),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25),
                                      )
                                  )
                              ),
                              child: const Text("₹ 750", style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: "Montserrat",
                                  color: Color.fromRGBO(185, 26, 129, 1)
                              ),)
                          ),
                        ),
                      ],
                    )
                  )
                  ]
                ),
              ),
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => SelectDthPlanScreen(
                selectedDthProvider: widget.selectedDthProvider,
                subscriberNumber: widget.subscriberNumber,
              )));
            },
            child: Text(
              "Proceed to Pay".toUpperCase(),
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
