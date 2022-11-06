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
          child: SingleChildScrollView(
            child: Column(
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}
