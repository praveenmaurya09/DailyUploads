import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20.0,
      runSpacing: 20.0,
      alignment: WrapAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          alignment: Alignment.center,
          child: const Text(
            "My Skills",
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        Container(
          width: context.screenWidth < 900
              ? context.screenWidth * 0.9
              : ((context.screenWidth * 0.8) / 3),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),
          ),
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Programming Langauges",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Divider(),  // Divider 

// Wrap Starting for the Skills
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                // Proving space in all the symeetry
                children: [
                   Chip(
                    label: Text("Flutter"),
                    labelStyle: TextStyle(
                      color: Colors.indigo,
                    ),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                  ),
                  // Repeating the chip  
                   Chip(
                    label: Text("Larvae"),
                    labelStyle: TextStyle(
                      color: Colors.indigo,
                    ),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                  ),
                  Chip(
                    label: Text("Dart"),
                    labelStyle: TextStyle(
                      color: Colors.indigo,
                    ),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                  ),
                   Chip(
                    label: Text("Java"),
                    labelStyle: TextStyle(
                      color: Colors.indigo,
                    ),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                  ),
                   Chip(
                    label: Text("C"),
                    labelStyle: TextStyle(
                      color: Colors.indigo,
                    ),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
// Second Container Starting

        Container(
          width: context.screenWidth < 900
              ? context.screenWidth * 0.9
              : ((context.screenWidth * 0.8) / 3),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),
          ),
          padding: EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Framworks",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Divider(),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                   Chip(
                    label: Text("Flutter"),
                    labelStyle: TextStyle(
                      color: Colors.indigo,
                    ),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                  ),
                   Chip(
                    label: Text("Larvae"),
                    labelStyle: TextStyle(
                      color: Colors.indigo,
                    ),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                  ),

                  Chip(
                    label: Text("Dart"),
                    labelStyle: TextStyle(
                      color: Colors.indigo,
                    ),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                  ),
                   Chip(
                    label: Text("Java"),
                    labelStyle: TextStyle(
                      color: Colors.indigo,
                    ),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                  ),
                   Chip(
                    label: Text("C"),
                    labelStyle: TextStyle(
                      color: Colors.indigo,
                    ),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: context.screenWidth < 900
              ? context.screenWidth * 0.9
              : ((context.screenWidth * 0.8) / 3),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),
          ),
          padding: EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Other Tools",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Divider(),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                   Chip(
                    label: Text("Flutter"),
                    labelStyle: TextStyle(
                      color: Colors.indigo,
                    ),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                  ),
                   Chip(
                    label: Text("Larvae"),
                    labelStyle: TextStyle(
                      color: Colors.indigo,
                    ),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                  ),

                  Chip(
                    label: Text("Dart"),
                    labelStyle: TextStyle(
                      color: Colors.indigo,
                    ),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                  ),
                   Chip(
                    label: Text("Java"),
                    labelStyle: TextStyle(
                      color: Colors.indigo,
                    ),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                  ),
                   Chip(
                    label: Text("C"),
                    labelStyle: TextStyle(
                      color: Colors.indigo,
                    ),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
