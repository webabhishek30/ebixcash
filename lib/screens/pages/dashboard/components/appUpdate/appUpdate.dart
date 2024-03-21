import 'package:flutter/material.dart';

class AppUpdate extends StatefulWidget {
  const AppUpdate({super.key});

  @override
  State<AppUpdate> createState() => _AppUpdateState();
}

class _AppUpdateState extends State<AppUpdate> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(
                        colors: [
                          Color.fromRGBO(189, 34, 135, 1),
                          Color.fromRGBO(102, 84, 159, 1),
                        ],
                        transform: GradientRotation(-70)
                    )
                ),
                child: Image.asset("assets/images/app_update.png", width: 45),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  children: [
                    const Text("New app update available", style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                    ),),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            
                            onPressed: (){

                            },
                            child: const Text("Later", style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Montserrat",
                              color: Color.fromRGBO(112, 112, 112, 1)
                            ),)
                        ),
                        SizedBox(
                          height: 30,
                          width: 90,
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

                              },
                              child: const Text("Update", style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500
                              ),)
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
      ),
    );
  }
}
