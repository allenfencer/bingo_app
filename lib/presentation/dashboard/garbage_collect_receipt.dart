import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

import '../../theme/styles.dart';

class GarbageReceiptScreen extends StatelessWidget {
  const GarbageReceiptScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var type = ['E-waste', 'glass', 'paper', 'E-waste', 'glass', 'paper'];
    var quantity = ['1', '1', '3', '1', '1', '3'];
    return SafeArea(
        child: Scaffold(
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
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                Image.asset('assets/images/takeAwayImg.png'),
                Container(
                  height: 170,
                  width: 304,
                  child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: type.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 50,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                            child: Container(
                              height: 55,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xff669902)),
                                  borderRadius: BorderRadius.circular(11)),
                              alignment: Alignment.center,
                              child: ListTile(
                                leading: Text(
                                  '${index+1}.',
                                  style: TT.f18w600
                                      .copyWith(color: Color(0xff669902)),
                                ),
                                title: Text('${type[index]}',
                                    style: TT.f18w600
                                        .copyWith(color: Color(0xff669902))),
                                trailing: Text('${quantity[index]}',
                                    style: TT.f18w600
                                        .copyWith(color: Color(0xff669902))),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                Text('Grand Total: 215\$', style: TT.f25w600.copyWith(fontStyle: FontStyle.italic),),
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Container(
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
                  Container(
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
                ],),
                SizedBox(height: 10,)
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
