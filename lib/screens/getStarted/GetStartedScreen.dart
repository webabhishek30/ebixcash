import 'package:ebixcash/components/buttons/purpleButtonComponent.dart';
import 'package:ebixcash/screens/login/LoginScreen.dart';
import 'package:ebixcash/screens/register/RegisterScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

import 'OnboardingTextComponent.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage("assets/images/footer_triangle.png"),
              fit: BoxFit.contain,
              alignment: Alignment.bottomCenter
            )
          ),
          child: Column(
            children: [
              Expanded(child: OnBoardingSlider(
                hasFloatingButton: false,
                hasSkip: false,
                controllerColor: const Color.fromRGBO(185, 26, 129, 1),
                totalPage: 3,
                headerBackgroundColor: Colors.white,
                background: [
                  Image.asset(
                    'assets/images/finance_artwork.png',
                    height: 304,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Image.asset(
                    'assets/images/insurance_artwork.png',
                    height: 304,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Image.asset(
                    'assets/images/travel_artwork.png',
                    height: 304,
                    width: MediaQuery.of(context).size.width,
                  ),
                ],
                speed: 1.8,
                pageBodies: [
                  OnBoardingTextComponent(title: 'Finance', description: 'Never a better time than now to start thinking about how you manage all your finances with ease.',),
                  OnBoardingTextComponent(title: 'Insurance', description: 'The goal is to transform end-to-end sales and processing of insurance in India.',),
                  OnBoardingTextComponent(title: 'Travel', description: 'EbixCash is one of the leading travel exchanges through its travel portfolio of Via.com and Mercury.',),
                ],
              ),),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8, height: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    PurpleButtonComponent(title: 'Create Account', icon: 'assets/images/button_user_icon.png', btnFunc: (){
                      Navigator.pushNamed(context, '/register');
                    },),
                    const SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, '/login');
                      },
                      child: RichText(
                        text: const TextSpan(text: 'Already member? ', style: TextStyle(color: Color.fromRGBO(48, 183, 231, 1)), children: [
                          TextSpan(text: 'Login', style: TextStyle(fontWeight: FontWeight.w900, decoration: TextDecoration.underline))
                        ]),
                      ),
                    )
                  ],
                )
              )
            ],
          )
        ),
      ),
    );
  }
}
