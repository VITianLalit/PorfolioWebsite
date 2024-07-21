import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';
import 'package:velocity_x/velocity_x.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30.0),
      margin: EdgeInsets.only(top: 20.0),
      width: context.screenWidth < 900
          ? context.screenWidth * 0.9
          : context.screenWidth * 0.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Education",
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
          ),
          Timeline.tileBuilder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              builder: TimelineTileBuilder.fromStyle(
                  itemCount: 4,
                  contentsAlign: ContentsAlign.alternating,
                  contentsBuilder: (context, index) {
                    return Card(
                      child: Container(
                        padding: EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "20 March 2019",
                              style: TextStyle(
                                  fontSize: 12.0, color: Colors.indigo),
                            ),
                            Text(
                              "Passed 10th",
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.w600),
                            ),
                            Text(
                                "10th Grade from this from this particular and with 95.8% of marks were secured by me.", style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey.shade700
                            ),),

                          ],
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
