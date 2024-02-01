import 'package:ebixcash/screens/getStarted/GetStartedScreen.dart';
import 'package:ebixcash/screens/login/LoginScreen.dart';
import 'package:ebixcash/screens/pages/dashboard/dashboard.dart';
import 'package:ebixcash/screens/register/RegisterScreen.dart';
import 'package:ebixcash/screens/verifyOtp/verifyOtp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initialize();
  }

  void initialize() async{
    await Future.delayed(const Duration(seconds: 1));
    FlutterNativeSplash.remove();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => const GetStartedScreen(),
        '/register' : (context) => const RegisterScreen(),
        '/login' : (context) => const LoginScreen(),
        '/verifyOtp' : (context) => const VerifyOtpScreen(),
        '/dashboard' : (context) => const DashboardScreen()
      },


    );
  }
}
