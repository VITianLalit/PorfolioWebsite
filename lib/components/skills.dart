import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 20.0,
      runSpacing: 20.0,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          alignment: Alignment.center,
          child: Text(
            "My Skills",
            style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          width: context.screenWidth < 900
              ? context.screenWidth * 0.9
              : context.screenWidth * 0.8 / 3,
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Programming Languages", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),),
              Divider(),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  Chip(
                    label: Text("Dart"),
                    labelStyle: TextStyle(color: Colors.indigo),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                    shape: StadiumBorder(
                      side: BorderSide(
                        color: Colors.indigo,
                      ),
                    ),
                  ),
                  Chip(
                    label: Text("Java"),
                    labelStyle: TextStyle(color: Colors.indigo),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                    shape: StadiumBorder(
                      side: BorderSide(
                        color: Colors.indigo,
                      ),
                    ),
                  ),
                  Chip(
                    label: Text("Python"),
                    labelStyle: TextStyle(color: Colors.indigo),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                    shape: StadiumBorder(
                      side: BorderSide(
                        color: Colors.indigo,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          width: context.screenWidth < 900
              ? context.screenWidth * 0.9
              : context.screenWidth * 0.8 / 3,
          decoration: BoxDecoration(color: Colors.white,  borderRadius: BorderRadius.circular(20.0)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Frameworks", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),),
              Divider(),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  Chip(
                    label: Text("Flutter"),
                    labelStyle: TextStyle(color: Colors.indigo),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                    shape: StadiumBorder(
                      side: BorderSide(
                        color: Colors.indigo,
                      ),
                    ),
                  ),
                  Chip(
                    label: Text("TensorFlow"),
                    labelStyle: TextStyle(color: Colors.indigo),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                    shape: StadiumBorder(
                      side: BorderSide(
                        color: Colors.indigo,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          width: context.screenWidth < 900
              ? context.screenWidth * 0.9
              : context.screenWidth * 0.8 / 3,
          decoration: BoxDecoration(color: Colors.white,  borderRadius: BorderRadius.circular(20.0)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Other Technologies & Tools", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),),
              Divider(),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  Chip(
                    label: Text("Firebase"),
                    labelStyle: TextStyle(color: Colors.indigo),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                    shape: StadiumBorder(
                      side: BorderSide(
                        color: Colors.indigo,
                      ),
                    ),
                  ),
                  Chip(
                    label: Text("Androd Studio"),
                    labelStyle: TextStyle(color: Colors.indigo),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                    shape: StadiumBorder(
                      side: BorderSide(
                        color: Colors.indigo,
                      ),
                    ),
                  ),
                  Chip(
                    label: Text("VSCode"),
                    labelStyle: TextStyle(color: Colors.indigo),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                    shape: StadiumBorder(
                      side: BorderSide(
                        color: Colors.indigo,
                      ),
                    ),
                  ),
                  Chip(
                    label: Text("Git/Github"),
                    labelStyle: TextStyle(color: Colors.indigo),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                    shape: StadiumBorder(
                      side: BorderSide(
                        color: Colors.indigo,
                      ),
                    ),
                  ),
                  Chip(
                    label: Text("Google Colab"),
                    labelStyle: TextStyle(color: Colors.indigo),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                    shape: StadiumBorder(
                      side: BorderSide(
                        color: Colors.indigo,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
