import 'package:flutter/material.dart';


class Experiment extends StatefulWidget {
  const Experiment({super.key});

  @override
  State<Experiment> createState() => _ExperimentState();
}

class _ExperimentState extends State<Experiment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Giant Panda'),
        centerTitle: true,
      ),
      body: Column(

        children: [
          Row(
            children: [
           SizedBox(
             height: 100,
             width: 105,
             child:    TextButton.icon(onPressed: (){},
               icon: Icon(Icons.qr_code_scanner_outlined),
               label: Text('Scan'),
               style: TextButton.styleFrom(
                 foregroundColor: Colors.white,
                 backgroundColor: Colors.blueAccent,
                 shape: ContinuousRectangleBorder(),
               ),
             ),
           ),
              SizedBox(
                height: 100,
                width: 2,
              ),

              SizedBox(
                height: 100,
                width: 105,
                child:    TextButton.icon(onPressed: (){
                  Navigator.pushNamed(context, '/routes');
                },
                  icon: Icon(Icons.airport_shuttle_outlined),
                  label: Text('Route'),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blueAccent,
                    shape: ContinuousRectangleBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                width: 2,
              ),
              SizedBox(
                height: 100,
                width: 105,
                child:    TextButton.icon(onPressed: (){},
                  icon: Icon(Icons.wallet_outlined),
                  label: Text('Wallet'),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blueAccent,
                    shape: ContinuousRectangleBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                width: 2,
              ),
              SizedBox(
                height: 100,
                width: 108,
                child:    TextButton.icon(onPressed: (){},
                  icon: Icon(Icons.qr_code_2_outlined),
                  label: Text('My Code'),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blueAccent,
                    shape: ContinuousRectangleBorder(),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
