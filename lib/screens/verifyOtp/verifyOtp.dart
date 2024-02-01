import 'package:ebixcash/components/buttons/purpleButtonComponent.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:otp_autofill/otp_autofill.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';


class VerifyOtpScreen extends StatefulWidget {

  const VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {

  OtpFieldController otpController = OtpFieldController();

  @override
  void initState() {
    super.initState();
  }




  @override
  Widget build(BuildContext context) {
    final mobileNumber = ModalRoute.of(context)?.settings.arguments.toString();
    return SafeArea(
        child: Scaffold(
            floatingActionButtonLocation: FloatingActionButtonLocation.startTop,

            floatingActionButton: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: FloatingActionButton(
                backgroundColor: Colors.transparent,
                disabledElevation: 0,
                elevation: 0,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black,),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height - 24,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/footer_triangle.png"),
                        fit: BoxFit.contain,
                        alignment: Alignment.bottomCenter
                    )
                ),
                padding: const EdgeInsets.only(left: 30, right: 30, bottom: 0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 250,
                      child: Image.asset('assets/images/verify_otp_icon.png', fit: BoxFit.fill),
                    ),
                    SizedBox(
                      child: Column(
                        children: [
                          const Text('Verification', style: TextStyle(fontFamily: 'Montserrat', fontSize: 23, fontWeight: FontWeight.w700),),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text('Enter 4 digit number that sent to',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(112, 112, 112, 1),
                                height: 1.5
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(mobileNumber!, style: const TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(112, 112, 112, 1),
                              height: 1.5
                          ),
                            textAlign: TextAlign.center,),
                          const SizedBox(
                            height: 30,
                          ),

                          Container(
                            padding: const EdgeInsets.all(30),
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                BorderRadius.all(Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black12,
                                      offset: Offset(5.0, 5.0),
                                      blurRadius: 10.0,
                                      spreadRadius: 2.0)
                                ]),
                            child: Column(
                              children: [
                                OTPTextField(
                                  otpFieldStyle: OtpFieldStyle(
                                    focusBorderColor: const Color(0xffC64398)
                                  ),
                                  controller: otpController,
                                  length: 4,
                                  width: MediaQuery.of(context).size.width,
                                  textFieldAlignment: MainAxisAlignment.spaceAround,
                                  fieldWidth: 45,
                                  fieldStyle: FieldStyle.underline,
                                  outlineBorderRadius: 15,
                                  style: TextStyle(fontSize: 17),
                                  onChanged: (pin) {
                                    print("Changed: " + pin);
                                  },
                                  onCompleted: (pin) {
                                    print("Completed: " + pin);
                                  }),
                                const SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.9,
                                  child: PurpleButtonComponent(title: "Verify Code", icon: "assets/images/white_tick.png", btnFunc: (){
                                    Navigator.pushNamed(context, "/login");                                  },),
                                ),
                              ],
                            ),
                          ),


                          const SizedBox(
                            height: 30,
                          ),
                          const Text('Re-send code in 0:30', style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(48, 183, 231, 1)
                          ),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
        )
    );
  }
}
