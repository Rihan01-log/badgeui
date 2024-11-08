import 'package:flutter/material.dart';

class Pay extends StatefulWidget {
  const Pay({super.key});

  @override
  State<Pay> createState() => _PayState();
}

class _PayState extends State<Pay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flight Details'),
          centerTitle: true,
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Container(
          height: 200,
          width: 500,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(150),
                  bottomRight: Radius.circular(150)),
              color: Colors.deepPurpleAccent),
          child: const Column(
            children: [Text('BCN'), Text('09:20')],
          ),
        ));
  }
}
