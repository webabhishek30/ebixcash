import 'package:ebixcash/screens/getStarted/GetStartedScreen.dart';
import 'package:ebixcash/screens/login/LoginScreen.dart';
import 'package:ebixcash/screens/pages/dashboard/dashboard.dart';
import 'package:ebixcash/screens/pages/drawer/addBeneficiary/addBeneficiary.dart';
import 'package:ebixcash/screens/pages/drawer/bankAccount/bankAccount.dart';
import 'package:ebixcash/screens/pages/drawer/complaintStatus/complaintStatus.dart';
import 'package:ebixcash/screens/pages/drawer/createUpi/createUpi.dart';
import 'package:ebixcash/screens/pages/drawer/createUpi/createYourOwnUpi/createYourOwnUpi.dart';
import 'package:ebixcash/screens/pages/drawer/helpSupport/help_support.dart';
import 'package:ebixcash/screens/pages/drawer/helpSupport/moreQueries/contactUs/contact_us.dart';
import 'package:ebixcash/screens/pages/drawer/myTransaction/my_transaction.dart';
import 'package:ebixcash/screens/pages/drawer/profile/profile.dart';
import 'package:ebixcash/screens/pages/drawer/rateUs/rate_us.dart';
import 'package:ebixcash/screens/pages/drawer/savedCards/saved_cards.dart';
import 'package:ebixcash/screens/pages/ebixcashCard/ebixcashCard.dart';
import 'package:ebixcash/screens/pages/ebixcashCard/ebixcashCardWithBalance/ebixcashCardWithBalance.dart';
import 'package:ebixcash/screens/pages/ebixcashCard/physicalCard/physicalCard.dart';
import 'package:ebixcash/screens/pages/notifications/notifications.dart';
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
        '/dashboard' : (context) => const DashboardScreen(),
        '/myTransaction' : (context) => const MyTransaction(),
        '/savedCards' : (context) => const SavedCards(),
        '/rateUs' : (context) => const RateUs(),
        '/helpSupport' : (context) => const HelpSupport(),
        '/contactus' : (context) => const ContactUs(),
        '/notifications' : (context) => const Notifications(),
        '/profile' : (context) => const Profile(),
        '/createUpi' : (context) => const CreateUpiScreen(),
        '/createYourOwnUpi' : (context) => const CreateYourOwnUpi(),
        '/ebixcashCard' : (context) => const EbixcashCard(),
        '/physicalCard' : (context) => const PhysicalCard(),
        '/ebixcashCardWithBalance' : (context) => const EbixcashCardWithBalanceScreen(),
        '/bankAccounts' : (context) => const BankAccountScreen(),
        '/complaintStatus' : (context) => const ComplaintStatusScreen(),
        '/addBeneficiary' : (context) => const AddBeneficiaryScreen(),
      },


    );
  }
}
