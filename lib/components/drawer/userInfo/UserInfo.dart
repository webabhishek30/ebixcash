import 'package:flutter/material.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({super.key});

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 30),
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [

              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.white
                    ),
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.1),
                        blurRadius: 5,

                      )
                    ]
                ),
                child: const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/images/user_thumbnail.jpg"),
                ),
              ),

              Positioned(
                  right: -10,
                  top: 50,
                  child: InkWell(
                    onTap: (){
                      // TODO
                      print("Open Camera");
                    },
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Image.asset("assets/images/camera.png"),
                    ),
                  ))
            ],
          ),
        ),

        const SizedBox(
          height: 10,
        ),
        const Text("Jane Cooper", style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.white,
            fontFamily: "Montserrat"
        ),),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          width: 120,
          height: 21,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "User Verified",
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Montserrat",
                    color: Color.fromRGBO(117, 92, 167, 1)
                ),
              ),

              Image.asset("assets/images/white_tick.png", color: const Color.fromRGBO(117, 92, 167, 1),)
            ],
          ),
        ),
      ],
    );
  }
}
