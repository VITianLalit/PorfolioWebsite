import 'package:flutter/material.dart';
import 'package:lalitsahu/components/education.dart';

import 'components/about.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  List<Widget> navItems = [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed: (){}, child: Text("Education")),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed: (){}, child: Text("Skills")),
    ),
  ];
  bool isMobile = false;
  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width > 700 ? false : true;
    return Scaffold(
      appBar: AppBar(
        title: Text("Porfolio Website"),
        actions: isMobile ? null: navItems,
      ),
      drawer: isMobile ? Drawer(
        child: ListView(
          children: navItems,
        ),
      ): null,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Wrap(
              children: [
                About(),
                Education()
              ],
            )
          ],
        ),
      )
    );
  }
}
