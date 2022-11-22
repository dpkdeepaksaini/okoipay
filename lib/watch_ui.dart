import 'package:flutter/material.dart';
class WatchUI extends StatefulWidget {
  const WatchUI({Key? key}) : super(key: key);

  @override
  State<WatchUI> createState() => _WatchUIState();
}

class _WatchUIState extends State<WatchUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 500,
        width: 350,
        child: Center(
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.orange
            ),
          ),
        ),
      ),
    );
  }
}
