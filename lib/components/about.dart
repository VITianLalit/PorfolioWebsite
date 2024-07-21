import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30.0),
      margin: EdgeInsets.only(top: 20.0),
      width: MediaQuery.of(context).size.width < 900
          ? context.screenWidth * 0.9
          : context.screenWidth * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
      ),
      child: Column(
        children: [
          SvgPicture.asset(
            "assets/images/profile.svg",
            height: 156.0,
          ),
          Text(
            "Lalit Sahu",
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w600),
          ),
          Text(
            "I'm a developer and I'm looking for dev roles in India.",
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 12,
          ),
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: [
              Chip(
                label: Text("Flutter Developer"),
                backgroundColor: Colors.green,
                padding: EdgeInsets.all(8.0),
                labelStyle: TextStyle(color: Colors.white),
                shape: StadiumBorder(), // No border specified
              ),
              Chip(
                label: Text("App Developer"),
                backgroundColor: Colors.green,
                padding: EdgeInsets.all(8.0),
                labelStyle: TextStyle(color: Colors.white),
                shape: StadiumBorder(), // No border specified
              )
            ],
          ),
          Divider(),
          Container(
            child: Row(
              children: [
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: FaIcon(FontAwesomeIcons.githubAlt, size: 20,),
                  ),
                ),
                SizedBox(width: 12,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Github"),
                    Text("Lalit's Portfolio"),
                  ],
                )
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: FaIcon(FontAwesomeIcons.githubAlt, size: 20,),
                  ),
                ),
                SizedBox(width: 12,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Github"),
                    Text("Lalit's Portfolio"),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
