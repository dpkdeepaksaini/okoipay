import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../signin_signup_verification_screens/login_screen.dart';
class Onbord2 extends StatefulWidget {
  const Onbord2({Key? key}) : super(key: key);

  @override
  State<Onbord2> createState() => _Onbord2State();
}

class _Onbord2State extends State<Onbord2> {

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
            SizedBox(height: fullhight*0.01),
            SizedBox(
                height: 336,
                width: 269,
                child: Image.asset('images/onbord2.png',fit: BoxFit.fill,)),
            const SizedBox(height: 18),
            Container(
              height: 7,
              width: 29,
              child: Row(
                children: [
                  Container(width: 7,height: 7,
                    decoration: BoxDecoration(
                      color: Color(0xffA6A6A6),
                      borderRadius: BorderRadius.circular(5),
                    ),),

                  SizedBox(height: 7,width: 6,),
                  Container(width: 16,height: 7,
                    decoration: BoxDecoration(
                      color: Color(0xff353535),
                      borderRadius: BorderRadius.circular(5),
                    ),),

                ],
              ),
            ),
            SizedBox(height: fullhight*0.02),
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
            SizedBox(height: fullhight*0.01),
            InkWell(
              onTap: (){},
              child: Container(
                height: 50,
                width: 302,
                decoration: BoxDecoration(
                  color: Color(0xff448EE4),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(child: Text('Get started',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 13),)),
              ),
            ),
            const SizedBox(height: 4),
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return LogInScreen();
                }));
              },
              child: Container(
                height: 50,
                width: 302,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff448EE4),width: 2),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(child: Text('Login',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),)),
              ),
            ),

          ],
        )
    );
  }
}