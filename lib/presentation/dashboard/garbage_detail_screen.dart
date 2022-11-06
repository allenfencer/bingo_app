import 'package:application1/presentation/address/address_screen.dart';
import 'package:application1/theme/styles.dart';
import 'package:flutter/material.dart';

class GarbageDetailScreen extends StatefulWidget {
  const GarbageDetailScreen({Key? key}) : super(key: key);

  @override
  State<GarbageDetailScreen> createState() => _GarbageDetailScreenState();
}

class _GarbageDetailScreenState extends State<GarbageDetailScreen> {
  int e_waste = 0;
  int plastic = 0;
  int metal = 0;
  int glass = 0;
  int paper = 0;
  int organic = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          height: 70,
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AddressScreen()));
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              decoration: BoxDecoration(
                  color: Color(0xffAAFF03),
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                'Proceed',
                style: TT.f18w600,
              ),
            ),
          ),
        ),
        body: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/garbage_detail_bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(top: 250),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  //red container
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/red_bin.png'),
                        Text('E-Waste'),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              e_waste--;
                              if (e_waste < 0) {
                                e_waste = 0;
                              }
                            });
                          },
                          icon: Icon(Icons.remove),
                        ),
                        Text(
                          e_waste.toString(),
                          style: TT.f32w400,
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              e_waste++;
                            });
                          },
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //orange container
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/orange_bin.png'),
                        Text('Plastic'),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              plastic--;
                              if (plastic < 0) {
                                plastic = 0;
                              }
                            });
                          },
                          icon: Icon(Icons.remove),
                        ),
                        Text(
                          plastic.toString(),
                          style: TT.f32w400,
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              plastic++;
                            });
                          },
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //yello container
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/yellow_bin.png'),
                        Text('Metal'),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              metal--;
                              if (metal < 0) {
                                metal = 0;
                              }
                            });
                          },
                          icon: Icon(Icons.remove),
                        ),
                        Text(
                          metal.toString(),
                          style: TT.f32w400,
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              metal++;
                            });
                          },
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //green container
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/green_bin.png'),
                        Text('Glass'),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              glass--;
                              if (glass < 0) {
                                glass = 0;
                              }
                            });
                          },
                          icon: Icon(Icons.remove),
                        ),
                        Text(
                          glass.toString(),
                          style: TT.f32w400,
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              glass++;
                            });
                          },
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //blue container
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/blue_bin.png'),
                        Text('Paper'),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              paper--;
                              if (paper < 0) {
                                paper = 0;
                              }
                            });
                          },
                          icon: Icon(Icons.remove),
                        ),
                        Text(
                          paper.toString(),
                          style: TT.f32w400,
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              paper++;
                            });
                          },
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //grey container
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/grey_bin.png'),
                        Text('Organic'),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              organic--;
                              if (organic < 0) {
                                organic = 0;
                              }
                            });
                          },
                          icon: Icon(Icons.remove),
                        ),
                        Text(
                          organic.toString(),
                          style: TT.f32w400,
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              organic++;
                            });
                          },
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
