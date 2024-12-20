import 'package:flutter/material.dart';


class submitFirstAppeal extends StatelessWidget {
  const submitFirstAppeal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Online RTI First Appeal Form'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text('Coming Soon',style: TextStyle(fontSize: 30),),
      ),
    );
  }
}
