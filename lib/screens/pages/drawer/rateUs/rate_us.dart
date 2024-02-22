import 'package:flutter/material.dart';

class RateUs extends StatefulWidget {
  const RateUs({super.key});

  @override
  State<RateUs> createState() => _RateUsState();
}

class _RateUsState extends State<RateUs> {
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
        title: const Text("Rate Us", style: TextStyle(
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
      body: Container(
        padding: const EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/smiley.png"),
            const SizedBox(
              height: 30,
            ),
            const Text(
                "Please rate your experience with our App!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 18,
                fontWeight: FontWeight.w600
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/star_big.png"),
                const SizedBox(
                  width: 5,
                ),
                Image.asset("assets/images/star_big.png"),
                const SizedBox(
                  width: 5,
                ),
                Image.asset("assets/images/star_big.png"),
                const SizedBox(
                  width: 5,
                ),
                Image.asset("assets/images/star_big.png"),
                const SizedBox(
                  width: 5,
                ),
                Image.asset("assets/images/star_big.png"),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 46,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: ElevatedButton(
                  style: ButtonStyle(
                      padding: const MaterialStatePropertyAll<EdgeInsetsGeometry>(
                          EdgeInsets.symmetric(
                              horizontal: 40
                          )
                      ),
                      backgroundColor: const MaterialStatePropertyAll<Color>(
                          Color.fromRGBO(185, 26, 129, 1)
                      ),
                      shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)
                          )
                      )
                  ),
                  onPressed: (){

                  },
                  child: const Text(
                    "Rate Now",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontFamily: "Montserrat"
                    ),
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}
