import 'package:flutter/material.dart';

import 'package:port/components/about.dart';
import 'package:port/components/drawer.dart';
import 'package:port/components/experience.dart';
import 'package:port/components/footer.dart';
import 'package:port/components/skills.dart';


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
    super.initState();
    navItems = [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed: () {}, child: Text("Exeperience")),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed: () {
        Scrollable.ensureVisible(skillKey.currentContext!);
      }, child: Text("Skills")),
    ),
  ];
  }
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width> 700 ? false : true;
    return Scaffold(
      appBar: AppBar(
        title: Text("PM",
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.w800,
        ),
        ),
        actions: isMobile ? null : navItems,
      ),
      drawer: isMobile //? NewDrawer()
          ? Drawer(
              child: ListView(
                children: navItems,
              ),
            )
          : null,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 20,
                runAlignment: WrapAlignment.center,
                children: [
                  About(),
                  Experience(),
                ],
              ),
            Skills(
              key: skillKey,
            ),  

            Footer(),
            ],
          ),
        ), 
        ),
    );
  }
}