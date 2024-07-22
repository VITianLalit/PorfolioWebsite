import 'package:flutter/material.dart';
import 'package:lalitsahu/components/education.dart';
import 'package:lalitsahu/components/footer.dart';
import 'package:lalitsahu/components/skills.dart';

import 'components/about.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  List<Widget> navItems = [];
  bool isMobile = false;
  final skillKey = GlobalKey();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navItems = [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(onPressed: (){}, child: Text("Education")),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(onPressed: (){
          Scrollable.ensureVisible(skillKey.currentContext!);
        }, child: Text("Skills")),
      ),
    ];
  }
  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width > 700 ? false : true;
    return Scaffold(
      backgroundColor: Colors.purple.withOpacity(0.08)
        ,
      appBar: AppBar(
        title: Text("Porfolio Website"),
        actions: isMobile ? null: navItems,
      ),
      drawer: isMobile ? Drawer(
        child: ListView(
          children: navItems,
        ),
      ): null,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Wrap(
                spacing: 20,
                alignment: WrapAlignment.center,
                children: [
                  About(),
                  Education()
                ],
              ),
              Skills(
                key: skillKey,
              ),
              Footer(),
              SizedBox(height: 20,)
            ],
          ),
        ),
      )
    );
  }
}
