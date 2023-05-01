import 'dart:async';
import 'dart:io';

import 'package:kissan_pay/pages/screens.dart';

class Splash extends StatefulWidget {
  const Splash({Key key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.push(
        context,
        PageTransition(
          child: const Onboarding(),
          type: PageTransitionType.rightToLeft,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: whiteColor,
        image: DecorationImage(
          image: AssetImage('assets/bg.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: WillPopScope(
        onWillPop: () => exit(0),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/kissan.jpeg',
              height: 109,
              width: 250,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
