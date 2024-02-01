import 'package:ebixcash/components/icons/solidColorIcon/solidColorIcon.dart';
import 'package:flutter/material.dart';

class RechargeAndBillPayment extends StatefulWidget {
  const RechargeAndBillPayment({super.key});

  @override
  State<RechargeAndBillPayment> createState() => _RechargeAndBillPaymentState();
}

class _RechargeAndBillPaymentState extends State<RechargeAndBillPayment> with TickerProviderStateMixin{

  bool isExpanded = false;
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "Recharge & Bill Payments",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
            fontFamily: "Montserrat"
          ),
        ),
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
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SolidColorIcon(
                icon: "assets/images/mobile.png",
                title: "Mobile",
                btnFunc: (){
                  print("Mobile");
                }
            ),
            SolidColorIcon(
                icon: "assets/images/DTH.png",
                title: "DTH",
                btnFunc: (){
                  print("DTH");
                }
            ),
            SolidColorIcon(
                icon: "assets/images/electricity.png",
                title: "Electricity",
                btnFunc: (){
                  print("electricity");
                }
            ),
            SolidColorIcon(
                icon: "assets/images/water.png",
                title: "Water",
                btnFunc: (){
                  print("Water");
                }
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SolidColorIcon(
                icon: "assets/images/tv.png",
                title: "Cable TV",
                btnFunc: (){
                  print("Cable TV");
                }
            ),
            SolidColorIcon(
                icon: "assets/images/insurance.png",
                title: "Insurance",
                btnFunc: (){
                  print("Insurance");
                }
            ),
            SolidColorIcon(
                icon: "assets/images/gas.png",
                title: "Piped Gas",
                btnFunc: (){
                  print("Piped Gas");
                }
            ),
            SolidColorIcon(
                icon: "assets/images/fastag.png",
                title: "Fastag",
                btnFunc: (){
                  print("Fastag");
                }
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        AnimatedSize (
          duration: const Duration(milliseconds: 150),
          curve: Curves.fastOutSlowIn,
          child: Container(
            child: isExpanded
                ? SizedBox(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SolidColorIcon(
                          icon: "assets/images/mobile.png",
                          title: "Mobile",
                          btnFunc: (){
                            print("Mobile");
                          }
                      ),
                      SolidColorIcon(
                          icon: "assets/images/DTH.png",
                          title: "DTH",
                          btnFunc: (){
                            print("DTH");
                          }
                      ),
                      SolidColorIcon(
                          icon: "assets/images/electricity.png",
                          title: "Electricity",
                          btnFunc: (){
                            print("electricity");
                          }
                      ),
                      SolidColorIcon(
                          icon: "assets/images/water.png",
                          title: "Water",
                          btnFunc: (){
                            print("Water");
                          }
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SolidColorIcon(
                          icon: "assets/images/tv.png",
                          title: "Cable TV",
                          btnFunc: (){
                            print("Cable TV");
                          }
                      ),
                      SolidColorIcon(
                          icon: "assets/images/insurance.png",
                          title: "Insurance",
                          btnFunc: (){
                            print("Insurance");
                          }
                      ),
                      SolidColorIcon(
                          icon: "assets/images/gas.png",
                          title: "Piped Gas",
                          btnFunc: (){
                            print("Piped Gas");
                          }
                      ),
                      SolidColorIcon(
                          icon: "assets/images/fastag.png",
                          title: "Fastag",
                          btnFunc: (){
                            print("Fastag");
                          }
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )
                : FadeTransition(opacity: _animation, child: const SizedBox.shrink()),
          ),
        ),
        GestureDetector(
          onTap: (){
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.transparent,
            ),
            child: isExpanded ? Image.asset("assets/images/more_arrow_up.png") : Image.asset("assets/images/more_arrow.png")
          ),
        )
      ],
    );
  }
}
