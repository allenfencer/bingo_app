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
                Text("BINGO"),
                SizedBox(
                  height: 40,
                ),
                Image.asset('assets/images/splashscreen_logo.png'),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'BinGO is all about waste management. Here you’ll able to contact your nearest vendors.',
                  textAlign: TextAlign.center,
                  style: TT.f14w400,
                ),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LoginScreen()));
                  },
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(color: Color(0xff37B943)),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    child: Text('Get Started'),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
