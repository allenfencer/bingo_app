import 'package:application1/presentation/dashboard/dashboard.dart';
import 'package:application1/presentation/registration/registration.dart';
import 'package:application1/services/login_api.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../theme/styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _mailvalidationKey = GlobalKey<FormState>();
  final _passvalidationkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  loginCurrentUser(String email, String password) async {
    await LoginApi().loginUser(email, password);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 28),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text("Welcome to BinGo again!", style: TT.f18w700),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    'assets/images/loginScreenImage.png',
                    height: 235,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Form(
                    key: _mailvalidationKey,
                    child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        filled: true,
                        contentPadding: EdgeInsets.symmetric(horizontal: 30),
                        fillColor: Color(0xffEEEEEE),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(50)),
                        hintText: 'Enter your email',
                        hintStyle: TT.f14w400.copyWith(color: Colors.grey),
                      ),
                      validator: (value) => textValidator(value, 'mail id'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Form(
                    key: _passvalidationkey,
                    child: TextFormField(
                      obscureText: true,
                      controller: passwordController,
                      validator: (value) => textValidator(value, 'password'),
                      decoration: InputDecoration(
                        filled: true,
                        contentPadding: EdgeInsets.symmetric(horizontal: 30),
                        fillColor: Color(0xffEEEEEE),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(50)),
                        hintText: 'Enter your password',
                        hintStyle: TT.f14w400.copyWith(color: Colors.grey),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Forgot Password',
                    style: TT.f14w400.copyWith(color: Color(0xff84C800)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () async {
                      if (_mailvalidationKey.currentState!.validate()) {
                        if (_passvalidationkey.currentState!.validate()) {
                          onLogin(context);
                          await loginCurrentUser(
                              emailController.text, passwordController.text);
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DashBoardScreen()));
                        }
                      }
                    },
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: Color(0xffAAFF03),
                          borderRadius: BorderRadius.circular(50)),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Text(
                        'Sign in',
                        style: TT.f18w700White,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'Don\'t have an account?  ', style: TT.f14w400),
                    TextSpan(
                        text: 'Sign up',
                        style: TT.f14w600.copyWith(color: Color(0xff84C800)),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = () => Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegistrationScreen())))
                  ]))
                ],
              ),
            ),
          )),
    );
  }

  textValidator(value, fieldName) {
    if (value == null || value.isEmpty) {
      return 'Please enter a $fieldName';
    }
    return null;
  }

  onLogin(context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Logging in user')),
    );
  }
}
