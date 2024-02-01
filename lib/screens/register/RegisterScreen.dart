import 'package:ebixcash/components/buttons/purpleButtonComponent.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  FocusNode focusNode = FocusNode();
  final TextEditingController mobileNumberController = TextEditingController();
  String initialCountry = 'IN';
  PhoneNumber number = PhoneNumber(isoCode: 'IN');
  late Object mobileNumber;
  bool validRegistration = false;

  @override
  Widget build(BuildContext context) {
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
                padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 250,
                      child: Image.asset('assets/images/registration_icon.png', fit: BoxFit.fill),
                    ),
                    SizedBox(
                      child: Column(
                        children: [
                          const Text('Registration', style: TextStyle(fontFamily: 'Montserrat', fontSize: 23, fontWeight: FontWeight.w700),),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text('Enter your mobile number, we’ll send you OTP to verify it later',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(112, 112, 112, 1),
                                height: 1.5
                            ),
                            textAlign: TextAlign.center,
                          ),
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
                            child: Form(
                              key: _formKey,
                              child: Column(
                                children: [
                                  IntlPhoneField(
                                    showDropdownIcon: false,
                                    flagsButtonMargin: const EdgeInsets.only(left: 10),
                                    initialCountryCode: 'IN',
                                    controller: mobileNumberController,
                                    focusNode: focusNode,
                                    decoration:  InputDecoration(
                                        isDense: true,
                                        counterText: "",
                                        border: const OutlineInputBorder(
                                          borderSide: BorderSide(),
                                        ),
                                        suffixIcon:  validRegistration ? Image.asset('assets/images/success_icon.png') : Image.asset('assets/images/success_icon.png', color: Colors.black12,)
                                    ),
                                    languageCode: "in",
                                    onChanged: (phone) {
                                      print(phone.completeNumber);
                                      mobileNumber = phone.completeNumber;
                                      if(phone.isValidNumber()){
                                        setState(() {
                                          validRegistration = true;
                                          print("Registration : $validRegistration");
                                        });
                                      }

                                    },
                                    onCountryChanged: (country) {
                                      print('Selected country: ${country.name}, Code: ${country.dialCode}');
                                    },
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  PurpleButtonComponent(title: "Create Account", icon: "assets/images/button_user_icon.png", btnFunc: (){
                                    final data = mobileNumber;
                                    Navigator.pushNamed(context, "/verifyOtp", arguments: data);
                                  },),
                                ],
                              ),
                            ),
                          ),

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
