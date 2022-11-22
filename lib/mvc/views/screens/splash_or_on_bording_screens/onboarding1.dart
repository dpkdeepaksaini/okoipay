import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:okoipay/mvc/views/screens/splash_or_on_bording_screens/onboarding2.dart';
class Onbord1 extends StatefulWidget {
  const Onbord1({Key? key}) : super(key: key);

  @override
  State<Onbord1> createState() => _Onbord1State();
}

class _Onbord1State extends State<Onbord1> {

  @override
  Widget build(BuildContext context) {
    double fullhight=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 22,width: MediaQuery.of(context).size.width,),
          SizedBox(
            height: 57,
              width: 201,
              child: Image.asset('images/okpi.png',fit: BoxFit.fill,)),
          const SizedBox(height: 26),
          SizedBox(
            height: 336,
            width: 279,
            child: Image.asset('images/onbord1.png',fit: BoxFit.fill,)),
          const SizedBox(height: 18),
          Container(
            height: 7,
            width: 29,
            child: Row(
              children: [
                Container(width: 16,height: 7,
                  decoration: BoxDecoration(
                  color: Color(0xff353535),
                  borderRadius: BorderRadius.circular(5),
                ),),
                SizedBox(height: 7,width: 6,),
                Container(width: 7,height: 7,
                  decoration: BoxDecoration(
                    color: Color(0xffA6A6A6),
                    borderRadius: BorderRadius.circular(5),
                  ),),
              ],
            ),
          ),
          const SizedBox(height: 28),
          SizedBox(
            width: 267,
            child: Text('Send or receive money seamlessly',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont('Poppins',fontSize: 25,fontWeight: FontWeight.w600,),
          )
          ),
          const SizedBox(height: 2),
          SizedBox(
            height: 48,
            width: 295,
            child: Text('You can make and receive payments swiftly and seamlessly.',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont('Poppins',fontSize: 16,fontWeight: FontWeight.w400,),
            ),
          ),
          SizedBox(height: fullhight*0.04),
          InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return Onbord2();
              }));
            },
            child: Container(
              height: 50,
              width: 302,
              decoration: BoxDecoration(
                color: Color(0xff448EE4),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(child: Text('next',style: TextStyle(color: Colors.white),)),
            ),
          ),

        ],
      )
    );
  }
}
