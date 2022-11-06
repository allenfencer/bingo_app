import 'package:flutter/material.dart';

import '../../theme/styles.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 140,
                decoration: BoxDecoration(
                    color: Color(0xffAAFF03),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Welcome", style: TT.f37w600,),
                        Text("Ben!", style: TT.f32w400,)
                      ],
                    ),
                    Image.asset("assets/images/waveEmoji.png")
                  ],
                ),
              ),
              SizedBox(
                height: 96,
              ),
              Image.asset(
                'assets/images/dashboardPic.png',
                height: 257,
              ),
              SizedBox(
                height: 49,
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xffAAFF03)),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.7,
                child: Text(
                  'Clear the bin',
                  style: TT.f18w600,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 63,
                    width: MediaQuery.of(context).size.width * 0.65,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(37),
                        border: Border.all(color: Color(0xff669902))),
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        SizedBox(width: 22,),
                        Image.asset('assets/images/locIcon.png'),
                        SizedBox(width: 10,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Home',
                                ),
                                SizedBox(width: 5,),
                                Image.asset('assets/images/dropDownIcon.png')
                              ],
                            ),
                            Text(
                              'Marvel Bakery, Nalanchira',
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 19,
                  ),
                  Image.asset(
                    'assets/images/profileIcon.png',
                    width: 63,
                    height: 63,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
