import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lalitsahu/utility/animated_contact.dart';
import 'package:lalitsahu/utility/socialrow.dart';
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
          : context.screenWidth < 1600
              ? context.screenWidth * 0.3
              : context.screenWidth * 0.2,
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
            alignment: WrapAlignment.center,
            spacing: 8.0,
            runSpacing: 8.0,
            children: [
              Chip(
                label: Text("Flutter Developer"),
                backgroundColor: Colors.green,
                padding: EdgeInsets.all(8.0),
                labelStyle: TextStyle(color: Colors.white, fontSize: 14.0),
                shape: StadiumBorder(), // No border specified
              ),
              Chip(
                label: Text("App Developer"),
                backgroundColor: Colors.green,
                padding: EdgeInsets.all(8.0),
                labelStyle: TextStyle(color: Colors.white, fontSize: 14.0),
                shape: StadiumBorder(), // No border specified
              )
            ],
          ),
          Divider(),
          AnimatedContact(
            iconData: FontAwesomeIcons.githubAlt,
            title: "Github",
            substitle: "Lalit's Portfolio",
            onTap: (){},
          ),
          AnimatedContact(
            iconData: FontAwesomeIcons.gitlab,
            title: "GitLab",
            substitle: "Lalit's Portfolio",
            onTap: (){},
          ),

          AnimatedContact(
            iconData: FontAwesomeIcons.linkedin,
            title: "LinkedIn",
            substitle: "Lalit's Portfolio",
            onTap: (){},
          ),
          SocialRow(),
        ],
      ),
    );
  }
}
