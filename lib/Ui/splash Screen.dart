import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:online_cinema_flutter_ui/Ui/HomePage.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => Splash_ScreenState();
}

class Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Lottie.asset(
            "assets/splash.json",
            fit: BoxFit.cover,
          ),
        ));
  }
}
