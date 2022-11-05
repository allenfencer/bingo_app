import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                Text("Welcome to BinGo again!", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                SizedBox(
                  height: 20,
                ),
                Image.asset('assets/images/login_screen_image.png'),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                      hintText: 'Enter your email'),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: Colors.grey), //<-- SEE HERE
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      hintText: 'Enter your password'),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Forgot Password'),
                SizedBox(height: 20,),
                Container(
                    height: 60,
                    decoration: BoxDecoration(color: Color(0xff37B943)),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    child: Text('Login'),
                  ),
                  SizedBox(height: 20,),
                Row(
                  children: [
                    SizedBox(width: 20,),Text('Don\'t have an account ? '),
                  Text('Sign up')],
                )
              ],
            ),
          )),
    );
  }
}
