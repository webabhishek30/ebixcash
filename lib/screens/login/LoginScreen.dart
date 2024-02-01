import 'package:ebixcash/components/buttons/purpleButtonComponent.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  FocusNode focusNode = FocusNode();
  final TextEditingController mobileNumberController = TextEditingController();
  String initialCountry = 'IN';
  PhoneNumber number = PhoneNumber(isoCode: 'IN');
  late Object mobileNumber;
  bool validLogin = false;
  bool validPassword = false;

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
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/footer_triangle.png"),
                        fit: BoxFit.contain,
                        alignment: Alignment.bottomCenter)),
                padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 250,
                      child: Image.asset('assets/images/login_icon.png',
                          fit: BoxFit.fill),
                    ),
                    SizedBox(
                      child: Column(
                        children: [
                          const Text(
                            'Login to Account',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 23,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'Enter your phone number and password below to access your account',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(112, 112, 112, 1),
                                height: 1.5),
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
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 50,
                                    child: TextFormField(

                                      onChanged: (value){
                                        setState(() {
                                          value?.length == 10 ? validLogin = true : validLogin = false;
                                          print(value);
                                        });
                                      },
                                      decoration: InputDecoration(
                                          enabledBorder:
                                          const OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.all(
                                                  Radius.circular(5)),
                                              borderSide: BorderSide(
                                                color: Color.fromRGBO(
                                                    225, 225, 225, 1),
                                                width: 1.0,
                                              ),
                                              gapPadding: 15),
                                          focusedBorder:
                                          const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black26),
                                          ),
                                          hintText: "Enter your phone number",
                                          hintStyle: const TextStyle(
                                              color: Color.fromRGBO(
                                                  194, 194, 194, 1),
                                              height: 3.2),
                                          suffixIcon: validLogin ? Image.asset(
                                              "assets/images/success_icon.png") : Image.asset(
                                            "assets/images/success_icon.png",
                                            color: const Color.fromRGBO(
                                                214, 214, 214, 1),
                                          )),
                                      keyboardType: TextInputType.phone,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  SizedBox(
                                    height: 50,
                                    child: TextFormField(
                                      onChanged: (value){
                                        setState(() {
                                          value!.length >= 8 ? validPassword = true : validPassword = false;
                                          print(value);
                                        });
                                      },
                                      obscureText: true,
                                      decoration: InputDecoration(
                                          enabledBorder:
                                              const OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(5)),
                                                  borderSide: BorderSide(
                                                    color: Color.fromRGBO(
                                                        225, 225, 225, 1),
                                                    width: 1.0,
                                                  ),
                                                  gapPadding: 15),
                                          focusedBorder:
                                              const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black26),
                                          ),
                                          hintText: "Enter your password",
                                          hintStyle: const TextStyle(
                                              color: Color.fromRGBO(
                                                  194, 194, 194, 1),
                                              height: 3.2),
                                          suffixIcon: validPassword ? Image.asset(
                                              "assets/images/success_icon.png") : Image.asset(
                                            "assets/images/success_icon.png",
                                            color: const Color.fromRGBO(
                                                214, 214, 214, 1),
                                          )),
                                      keyboardType: TextInputType.text,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  PurpleButtonComponent(
                                    title: "Access your account",
                                    icon: "assets/images/access_icon.png",
                                    btnFunc: () {
                                      Navigator.pushNamed(context, '/dashboard');
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),

                          const SizedBox(
                            height: 30,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/register');
                            },
                            child: RichText(
                              text: const TextSpan(
                                  text: 'Not a member? ',
                                  style: TextStyle(
                                      color: Color.fromRGBO(48, 183, 231, 1)),
                                  children: [
                                    TextSpan(
                                        text: 'Create Account',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            decoration:
                                                TextDecoration.underline))
                                  ]),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}
