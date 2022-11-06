import 'package:application1/presentation/address/address_screen.dart';
import 'package:application1/presentation/dashboard/garbage_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

import '../../theme/styles.dart';

class GarbageReceiptScreen extends StatelessWidget {
  final List eachGarbageItem;
  const GarbageReceiptScreen({Key? key, required this.eachGarbageItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List garbageType = [
      'E-Waste',
      'Plastic',
      'Metal',
      'Glass',
      'Paper',
      'Organic'
    ];

    double total = 0;

    return SafeArea(
        child: Scaffold(
      body: Container(
        width: double.maxFinite,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topCenter,
            image: AssetImage('assets/images/garbage_detail_bg.png'),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            margin: EdgeInsets.only(top: 200),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/takeAwayImg.png',
                  height: 180,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      padding: const EdgeInsets.all(8),
                      itemCount: garbageType.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff669902)),
                              borderRadius: BorderRadius.circular(11)),
                          // alignment: Alignment.center,
                          child: ListTile(
                            leading: Text(
                              '${index + 1}.',
                              style:
                                  TT.f18w600.copyWith(color: Color(0xff669902)),
                            ),
                            title: Text('${garbageType[index]}',
                                style: TT.f18w600
                                    .copyWith(color: Color(0xff669902))),
                            trailing: Text('${eachGarbageItem[index]}',
                                style: TT.f18w600
                                    .copyWith(color: Color(0xff669902))),
                          ),
                        );
                      }),
                ),
                Text(
                  'Grand Total: 200 Rs',
                  style: TT.f18w700,
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GarbageDetailScreen()));
                      },
                      child: Container(
                        height: 59,
                        width: 144,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0xffAAFF03)),
                        alignment: Alignment.center,
                        child: Text(
                          'Add More',
                          style: TT.f18w600,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddressScreen()));
                      },
                      child: Container(
                        height: 59,
                        width: 144,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0xffAAFF03)),
                        alignment: Alignment.center,
                        child: Text(
                          'Proceed',
                          style: TT.f18w600,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
