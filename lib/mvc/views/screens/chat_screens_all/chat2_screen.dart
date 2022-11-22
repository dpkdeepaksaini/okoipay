import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:okoipay/utils/all_widgets.dart';
class ChatScreen2 extends StatefulWidget {
  const ChatScreen2({Key? key}) : super(key: key);

  @override
  State<ChatScreen2> createState() => _ChatScreen2State();
}

class _ChatScreen2State extends State<ChatScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_sharp,color: Colors.black,)),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('images/dp2.png'),
                radius: 24.5,
              ),
              title: Text('Vijay', style: GoogleFonts.getFont(
                'Inter',
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              )),
              subtitle: Text('+91 9777777777',
                  style: GoogleFonts.getFont(
                    'Inter',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.5),
                  )),
            ),
          ],
        ),
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
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(Icons.more_vert_sharp,color: Colors.black,size: 30,),
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Divider(),
          SizedBox(height: 13,width: MediaQuery.of(context).size.width,),
          Container(
            child: Center(
              child: Text('10 Oct 2022',style: GoogleFonts.getFont(
                'Inter',
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              )),
            ),
            height: 27,
            width: 116,
            decoration: BoxDecoration(
              color: Color.fromRGBO(0, 102, 255, 0.1),
              borderRadius: BorderRadius.circular(13.5),
            ),
          ),
          SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.only(right: 100),
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 102, 255, 0.1),
                borderRadius: BorderRadius.circular(13)
              ),
              height: 150,
              width: 234,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 28,top: 22),
                    child: Row(
                      children: [
                        Text('₹10,000',style: GoogleFonts.getFont(
                          'Inter',
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                            )),
                        Icon(Icons.check_circle,color: Colors.green,size: 25,)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 28,top: 11),
                    child: Text('Receive Bank',style: GoogleFonts.getFont(
                      'Inter',
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 178,top: 24),
                    child: Text('08:31',style: GoogleFonts.getFont(
                      'Inter',
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    )),
                  )
                ],

              ),
            ),
          ),
          SizedBox(height: 22,),
          Padding(
            padding: const EdgeInsets.only(right: 100),
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 102, 255, 0.1),
                  borderRadius: BorderRadius.circular(13)
              ),
              height: 150,
              width: 234,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 28,top: 22),
                    child: Row(
                      children: [
                        AllWidgets().bigText(text: '10,000',),
                        Icon(Icons.check_circle,color: Colors.green,size: 25,)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 28,top: 11),
                    child: Text('Receive Bank',style: GoogleFonts.getFont(
                      'Inter',
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 178,top: 24),
                    child: Text('08:33',style: GoogleFonts.getFont(
                      'Inter',
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    )),
                  )
                ],

              ),
            ),
          ),
        ],
      ),
    );
  }
}
