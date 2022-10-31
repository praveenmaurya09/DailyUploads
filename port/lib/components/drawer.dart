import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:port/components/experience.dart';
import 'package:port/components/skills.dart';



class NewDrawer extends StatefulWidget {
   NewDrawer({super.key});

  @override
  State<NewDrawer> createState() => _NewDrawerState();
}

class _NewDrawerState extends State<NewDrawer> {
  final experienceKey = GlobalKey();
  final skillKey = GlobalKey();
   List<Widget> navItems = [];

  @override
  void initState() {
    super.initState();
    navItems = [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed: () {
        Scrollable.ensureVisible(experienceKey.currentContext!);
      }, child: Text("Exeperience")),
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
    return Drawer(
      child: Container(
        color: Colors.deepPurple[100],
        child: ListView(
          children: [
            DrawerHeader(child: Center(
              child: Text('PM',
              style: TextStyle(fontSize: 35),
              )
              ,),
              ),
            ListTile(
              leading: FaIcon(Icons.home),
              title: Text(
                'Experience',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Experience()
                  )
                );
              },
            ),  
            ListTile(
              leading: FaIcon(Icons.home),
              title: Text(
                'Skills',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Skills()
                  )
                );
              },
            ),     
          ],
        ),
      )
    );
  }
}