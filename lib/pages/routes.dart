import 'package:flutter/material.dart';

class TheRoutes extends StatelessWidget {
  const TheRoutes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routes'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 180,
            width: 360,
            child: Card(

            ),
          )
        ],
      ),
    );
  }
}
