import 'package:flutter/material.dart';

class submitRequest extends StatefulWidget {
  const submitRequest({super.key});

  @override
  State<submitRequest> createState() => _submitRequestState();
}

class _submitRequestState extends State<submitRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Submit a new RTI Request Form'),
        titleTextStyle: TextStyle(fontFamily: ),
      ),
      body: Text('Hello'),
    );
  }
}
