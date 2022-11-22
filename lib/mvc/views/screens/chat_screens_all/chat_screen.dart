import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Chat1_tabbar_2.dart';
import 'all_products_list.dart';
class ChatScreen1 extends StatefulWidget {
  const ChatScreen1({Key? key}) : super(key: key);

  @override
  State<ChatScreen1> createState() => _ChatScreen1State();
}

class _ChatScreen1State extends State<ChatScreen1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton<int>(itemBuilder: (context) =>
            [
              PopupMenuItem(value: 1,child: Row(
                children: [
                  Icon(Icons.person_outline_outlined,color: Colors.black,),
                  Text('view profile'),
                ],
              )),
              PopupMenuItem(value: 2,child: Row(
                children: [
                  Icon(Icons.pin_drop_rounded,color: Colors.black,),
                  Text('pin'),
                ],
              )),
              PopupMenuItem(value: 3,child: Row(
                children: [
                  Icon(Icons.volume_off,color: Colors.black,),
                  Text('mute'),
                ],
              )),
              PopupMenuItem(value: 4,child: Row(
                children: [
                  Icon(Icons.delete,color: Colors.black,),
                  Text('delete'),
                ],
              )),
              PopupMenuItem(value: 4,child: Row(
                children: [
                  Icon(Icons.block,color: Colors.black,),
                  Text('block'),
                ],
              )),
            ],
            child: Icon(Icons.more_vert_sharp,color: Colors.black,),
          )
        ],
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Chat',style: GoogleFonts.getFont('Inter',fontSize: 16,fontWeight: FontWeight.w700,color: Colors.black),),
        bottom: TabBar(
          tabs: [
            Tab(child: Padding(
              padding: const EdgeInsets.only(left: 17,bottom: 5),
              child: Text('All',style: GoogleFonts.getFont('Inter',fontSize: 16,fontWeight: FontWeight.w700,color: Colors.black),),
            ),),
            Tab(child: Text('Payments',style: GoogleFonts.getFont('Inter',fontSize: 16,fontWeight: FontWeight.w700,color: Colors.black),),)
          ],
        ),
      ),
      body: TabBarView(
        children: [
          Chat1Tab1(),
          Chat1Tab2(),
      ],),
    ),);
  }
}
