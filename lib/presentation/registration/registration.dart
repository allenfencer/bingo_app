import 'package:application1/presentation/dashboard/dashboard.dart';
import 'package:application1/theme/styles.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController location = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 28),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80,
                ),
                Text(
                  'Welcome to BinGO',
                  style: TT.f18w700,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'How you manage your waste? If don’t then staart from now!',
                  style: TT.f14w400,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    hintText: 'Enter your full name',
                    hintStyle: TT.f14w400Grey,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: 'Enter your email',
                    hintStyle: TT.f14w400Grey,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                    hintStyle: TT.f14w400Grey,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                TextFormField(
                  controller: confirmPasswordController,
                  decoration: InputDecoration(
                    hintText: 'Confirm your password',
                    hintStyle: TT.f14w400Grey,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                TextFormField(
                  controller: location,
                  decoration: InputDecoration(
                    hintText: 'Your Location',
                    hintStyle: TT.f14w400Grey,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DashBoardScreen()));
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Color(0xff37B943)),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      'Register',
                      style: TT.f18w700White,
                    ),
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DashBoardScreen()));
                  },
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'Already have an account?  ', style: TT.f14w400),
                    TextSpan(
                        text: 'Login',
                        style: TT.f14w400.copyWith(color: Color(0xff37B943)))
                  ])),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
