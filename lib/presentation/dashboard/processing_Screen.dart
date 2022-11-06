import 'package:application1/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/wishesImg.png'),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(child: Icon(Icons.check)),
                  SizedBox(width: 10,),
                  Container(child: Text('Your request has been sent successfully!'),)
                ],
              ),
              SizedBox(height: 15,),
              Align(alignment: Alignment.centerLeft,child: Image.asset('assets/images/broomImg.png')),
              SizedBox(height: 25,),
              Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xffD4FF80)),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Text(
                      'Done 😃',
                      style: TT.f14w600.copyWith(fontSize: 30,),
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
