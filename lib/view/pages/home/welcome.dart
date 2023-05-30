import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../../routes/myroutes.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  void initState() {
    super.initState();
    goToHomePage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(children: [
      Lottie.asset('assets/lottie/chat_loading.json'),
    ])));
  }

  Future goToHomePage() async {
    Future.delayed(
      const Duration(seconds: 5),
      () {
        Navigator.pushNamed(context, MyRoutes.home);
      },
    );
  }
}
