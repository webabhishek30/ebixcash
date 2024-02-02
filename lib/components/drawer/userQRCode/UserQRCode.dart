import 'package:flutter/material.dart';

class UserQRCode extends StatefulWidget {
  const UserQRCode({super.key});

  @override
  State<UserQRCode> createState() => _UserQRCodeState();
}

class _UserQRCodeState extends State<UserQRCode> {

  final Shader linearGradient = const LinearGradient(
    colors: <Color>[Color(0xffDA44bb), Color(0xff8921aa)],
  ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
                text: const TextSpan(
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                          text: "UPI ID : ",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,

                              color: Color.fromRGBO(158, 55, 145, 1)
                          )
                      ),
                      TextSpan(
                          text: "9910686363@ebixcash",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black
                          )
                      )
                    ]
                )
            ),
            const SizedBox(
              width: 5,
            ),
            InkWell(
              onTap: (){
                // TODO
                print("Upi Id Copied");
              },
              child: Image.asset("assets/images/copy.png"),
            )
          ],
        ),
        const SizedBox(
          height: 60,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            image: const DecorationImage(
                alignment: Alignment.bottomCenter,
                fit: BoxFit.contain,
                image: AssetImage("assets/images/qr_code_bottom_bg.png",)
            ),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.25),
                blurRadius: 25
              )
            ],
            borderRadius: BorderRadius.circular(15)
          ),
          child: Column(
            children: [

              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.topCenter,
                children: [
                  const SizedBox(
                    width: 76,
                    height: 46,
                  ),
                  Positioned(
                    top: -38,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      width: 76,
                      height: 76,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(38),
                          gradient: const LinearGradient(
                              colors: [
                                Color.fromRGBO(189, 34, 135, 1),
                                Color.fromRGBO(102, 84, 159, 1),

                              ]
                          )
                      ),
                      child: const Center(
                        child: Text(
                          "RS",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 30,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),

                  ),

                ],
              ),
              Image.asset("assets/images/logo.png", width: 44,),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("Rahul Kumar Sharma",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Montserrat"
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.asset("assets/images/success_icon.png", color: const Color.fromRGBO(43, 154, 207, 1),)
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Text("Phone: 9826800000",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Montserrat"
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Image.asset("assets/images/qr_code.png"),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: (){
                  print("Share QR Code");
                },
                child: Container(
                  height: 33,
                  width: 108,
                  padding: const EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: const LinearGradient(
                        colors: [
                          Color.fromRGBO(189, 34, 135, 1),
                          Color.fromRGBO(102, 84, 159, 1),
                        ]
                    )
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/images/share.jpg", width: 14,),

                        Text(
                          'Share QR',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Montserrat",
                              foreground: Paint()..shader = linearGradient),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),

      ],
    );
  }
}
