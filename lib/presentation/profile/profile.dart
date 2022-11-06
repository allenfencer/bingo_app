import 'package:flutter/material.dart';
import '../../theme/styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 189,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xffAAFF03).withOpacity(.5),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "HALO",
                          style: TT.f37w600,
                        ),
                        Text(
                          "Ben!",
                          style: TT.f32w400,
                        )
                      ],
                    ),
                    Image.asset("assets/images/happyEmoji.png")
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.fromLTRB(47,0,0,0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://d27jswm5an3efw.cloudfront.net/app/uploads/2019/08/image-url-3.jpg'),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ben Alice",
                          style: TT.f20w600,
                        ),
                        Text(
                          'benalice@gmail.com',
                          style: TT.f15w300,
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 48,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(47, 0, 47, 0),
                child: Column(
                  children: [
                    Container(
                      child: Row(children: [
                        Image.asset('assets/images/phoneIcon.png'),
                        SizedBox(
                          width: 19,
                        ),
                        Text(
                          '987654xxxx',
                          style: TT.f14w400,
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Divider(),
                    Container(
                      child: Row(children: [
                        Image.asset('assets/images/fileIcon.png'),
                        SizedBox(
                          width: 19,
                        ),
                        Text(
                          'Order History',
                          style: TT.f14w400,
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Divider(),
                    Container(
                      child: Row(children: [
                        Image.asset('assets/images/bulbIcon.png'),
                        SizedBox(
                          width: 19,
                        ),
                        Text(
                          'Feedback',
                          style: TT.f14w400,
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Divider()
                  ],
                ),
              ),
              Image.asset('assets/images/wasteManagementImage.png', height: 267,)
            ],
          ),
        ),
        
      ),
    );
  }
}
