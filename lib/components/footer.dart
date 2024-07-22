import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lalitsahu/utility/socialrow.dart';
import 'package:velocity_x/velocity_x.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          SocialRow(),
          SizedBox(height: 10.0,),
          Text("Lalit's Portfolio"),
        ],
      ),
    );
  }
}
