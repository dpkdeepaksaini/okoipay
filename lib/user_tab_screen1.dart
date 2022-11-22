import 'package:flutter/material.dart';
class UserTabScreen1 extends StatefulWidget {
  const UserTabScreen1({Key? key}) : super(key: key);

  @override
  State<UserTabScreen1> createState() => _UserTabScreen1State();
}

class _UserTabScreen1State extends State<UserTabScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('screen 1')),
    );
  }
}
