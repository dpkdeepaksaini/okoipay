import 'package:flutter/material.dart';

import '../../../../utils/all_widgets.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          // height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 24,
                width: MediaQuery.of(context).size.width,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 89),
                child: SizedBox(
                    height: 57,
                    width: 201,
                    child: Image.asset(
                      'images/okpi.png',
                      fit: BoxFit.fill,
                    )),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.only(left: 29),
                child: AllWidgets().smallText(
                    text: 'Welcome back',
                    fontSize: 20,
                    fontWeight: FontWeight.w100),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(left: 29),
                child: Container(
                  height: 76,
                  width: 302,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AllWidgets().smallText(text: 'First Name',fontWeight: FontWeight.w400,fontSize: 10),
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
                      AllWidgets().smallText(text: 'Last Name',fontWeight: FontWeight.w400,fontSize: 10),
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
                      AllWidgets().smallText(text: 'Phone Number',fontWeight: FontWeight.w400,fontSize: 10),
                      const SizedBox(height: 8,),
                      Container(height: 56,width: 302,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: '8107714814',
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
              const SizedBox(height: 6),
              InkWell(
                onTap: (){},
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
