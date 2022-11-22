import 'package:flutter/material.dart';
import 'package:okoipay/user_tab_screen1.dart';
import 'package:okoipay/user_tab_screen2.dart';
import 'package:okoipay/user_tab_screen3.dart';

class ScreenSB extends StatefulWidget {
  const ScreenSB({Key? key}) : super(key: key);

  @override
  State<ScreenSB> createState() => _ScreenSBState();
}

class _ScreenSBState extends State<ScreenSB> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            actions: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  width: 150,
                  child: Row(
                    children: [
                      CircleAvatar(backgroundColor: Colors.green,child: Text('M',style: TextStyle(fontSize: 22),),),
                      SizedBox(width: 5,),
                      Text('Mohit',style: TextStyle(fontSize: 18),),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5),
                  ),

                  width: 70,
                  child: Center(
                      child: Text(
                    'EDIT',
                    style: TextStyle(fontSize: 16),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Icon(Icons.more_vert,size: 30,),
              ),
            ],
            elevation: 0,
            backgroundColor: Color(0xff36403f),
            bottom: TabBar(
              indicatorWeight: 4,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.white,
              isScrollable: true,
              tabs: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    'ATTENDANCE',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    'SALARY',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    'NOTES',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              UserTabScreen1(),
              UserTabScreen2(),
              UserTabScreen3(),
            ],
          ),
        ));
  }
}
