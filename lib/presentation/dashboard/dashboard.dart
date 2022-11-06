import 'package:application1/presentation/dashboard/garbage_detail_screen.dart';
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
        bottomNavigationBar: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: SizedBox(
                    width: 250,
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
                    ),
                  )),
              // SizedBox(
              //   width: 30,
              // ),
              Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffAAFF03), width: 2),
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white),
                  child: Icon(Icons.person)),
            ]),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 140,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                          Text(
                            "Welcome",
                            style: TT.f37w600,
                          ),
                          Text(
                            "Ben!",
                            style: TT.f32w400,
                          )
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
                  height: 150,
                ),
                SizedBox(
                  height: 49,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GarbageDetailScreen()));
                  },
                  child: Container(
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
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
