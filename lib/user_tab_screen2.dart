import 'package:flutter/material.dart';
class UserTabScreen2 extends StatefulWidget {
  const UserTabScreen2({Key? key}) : super(key: key);

  @override
  State<UserTabScreen2> createState() => _UserTabScreen2State();
}

class _UserTabScreen2State extends State<UserTabScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('screen 2')),
    );
  }
}
