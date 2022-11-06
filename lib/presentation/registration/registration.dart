import 'package:application1/presentation/dashboard/dashboard.dart';
import 'package:application1/services/create_user_api.dart';
import 'package:application1/theme/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../screenLogin/screenLogin.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController locationController = TextEditingController();

  Future updateDataToServer() async {
    await CreateUserApi().createUser(nameController.text, emailController.text,
        phoneController.text, passwordController.text, locationController.text);
  }

  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController location = TextEditingController();

  final _namevalidationKey = GlobalKey<FormState>();
  final _newpassvalidationkey = GlobalKey<FormState>();
  final _mailvalidationKey = GlobalKey<FormState>();
  final _confirmpassvalidationkey = GlobalKey<FormState>();
  final _locationkey = GlobalKey<FormState>();

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
                Form(
                  key: _namevalidationKey,
                  child: TextFormField(
                    validator: (value) => textValidator(value, "name"),
                    controller: nameController,
                    decoration: InputDecoration(
                      hintText: 'Enter your full name',
                      hintStyle: TT.f14w400Grey,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                Form(
                  key: _mailvalidationKey,
                  child: TextFormField(
                    validator: (value) => textValidator(value, 'mail ID'),
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      hintStyle: TT.f14w400Grey,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                Form(
                  key: _newpassvalidationkey,
                  child: TextFormField(
                    validator: (value) => textValidator(value, 'password'),
                    controller: passwordController,
                    decoration: InputDecoration(
                      hintText: 'Enter your password',
                      hintStyle: TT.f14w400Grey,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                Form(
                  key: _confirmpassvalidationkey,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty || value != passwordController.value.text) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                    controller: phoneController,
                  keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Enter your phone number',
                      hintStyle: TT.f14w400Grey,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                Form(
                  key: _locationkey,
                  child: TextFormField(
                    validator: (value) => textValidator(value, location),
                    controller: locationController,
                    decoration: InputDecoration(
                      hintText: 'Your Location',
                      hintStyle: TT.f14w400Grey,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    if (_namevalidationKey.currentState!.validate() &&
                        _mailvalidationKey.currentState!.validate() &&
                        _newpassvalidationkey.currentState!.validate() &&
                        _confirmpassvalidationkey.currentState!.validate() &&
                        _locationkey.currentState!.validate()) {
                      onRegistration(context);
                    }
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
                      style: TT.f14w400.copyWith(color: Color(0xff37B943)),
                      recognizer: new TapGestureRecognizer()
                        ..onTap = () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen())),
                    )
                  ])),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  textValidator(value, fieldName) {
    if (value == null || value.isEmpty) {
      return 'Please enter a $fieldName';
    }

    return null;
  }

  onRegistration(context) {
    return Navigator.push(
        context, MaterialPageRoute(builder: (context) => DashBoardScreen()));
  }
}
