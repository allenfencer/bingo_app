import 'package:application1/theme/styles.dart';
import 'package:flutter/material.dart';

class ProcessingScreen extends StatelessWidget {
  const ProcessingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(31.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
              ),
              Image.asset('assets/images/wishesImg.png'),
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        blurRadius: 25,
                        spreadRadius: 3,
                        offset: Offset(5, 5))
                  ],
                ),
                child: Text('Your request has been sent successfully!'),
              ),
              Spacer(),
              Container(
                height: 40,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          blurRadius: 25,
                          spreadRadius: 3,
                          offset: Offset(5, 5))
                    ],
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xffD4FF80)),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.7,
                child: Text(
                  'Done 😃',
                  style: TT.f14w600.copyWith(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
