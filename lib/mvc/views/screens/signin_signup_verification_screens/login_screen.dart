import 'package:flutter/material.dart';
import 'package:okoipay/mvc/views/screens/signin_signup_verification_screens/signup_screen.dart';
import 'package:okoipay/utils/all_widgets.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 52,
                width: MediaQuery.of(context).size.width,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: SizedBox(
                    height: 57,
                    width: 201,
                    child: Image.asset(
                      'images/okpi.png',
                      fit: BoxFit.fill,
                    )),
              ),
              const SizedBox(height: 52),
              Padding(
                padding: EdgeInsets.only(left: 29),
                child: AllWidgets().smallText(
                    text: 'Welcome back',
                    fontSize: 20,
                    fontWeight: FontWeight.w100),
              ),
              const SizedBox(height: 39),
              Padding(
                padding: const EdgeInsets.only(left: 29),
                child: Container(
                  height: 76,
                  width: 302,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AllWidgets().smallText(text: 'Email Address',fontWeight: FontWeight.w400,fontSize: 10),
                      const SizedBox(height: 8,),
                      Container(height: 56,width: 302,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Lorem ipsum',
                              hintStyle: TextStyle(color: Color(0xffA6A6A6),fontWeight: FontWeight.w400),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 29),
                child: Container(
                  height: 76,
                  width: 302,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AllWidgets().smallText(text: 'Password',fontWeight: FontWeight.w400,fontSize: 10),
                      const SizedBox(height: 8,),
                      Container(height: 56,width: 302,
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.remove_red_eye_outlined),
                            hintText: 'Type password',
                              hintStyle: TextStyle(color: Color(0xffA6A6A6),fontWeight: FontWeight.w400),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 51),
              InkWell(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.only(left: 29),
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
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return SignUpScreen();
                  }));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 29),
                  child: Container(
                    height: 50,
                    width: 302,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(child: Text('Are you new here? Signup',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13),)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
