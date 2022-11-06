import 'package:application1/theme/styles.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  TextEditingController locationSearchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        bottomNavigationBar: Container(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 10),
            alignment: Alignment.center,
            height: 70,
            child: TextFormField(
              controller: locationSearchController,
              decoration: InputDecoration(
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.location_on,
                  ),
                ),
                hintText: 'Search location',
                hintStyle: TT.f14w400Grey,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.grey, width: 2),
                ),
              ),
            )),
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
