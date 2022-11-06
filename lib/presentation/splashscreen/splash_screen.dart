import 'package:application1/presentation/registration/registration.dart';
import 'package:application1/presentation/screenLogin/screenLogin.dart';
import 'package:application1/theme/styles.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 28),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/bingoMainLogo.png',
                  height: 120,
                  width: 276,
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset('assets/images/splashscreen_logo.png'),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Connect with your nearest waste collecter and get them disposed effectively and efficiently',
                  textAlign: TextAlign.center,
                  style: TT.f14w600,
                ),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegistrationScreen()));
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xffAAFF03)),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      'Get Started',
                      style: TT.f18w600,
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
