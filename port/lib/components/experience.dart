import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';
import 'package:velocity_x/velocity_x.dart';

class Experience extends StatefulWidget {
  const Experience({super.key});

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20.0,
      ),
      width: context.screenWidth < 900 
      ? context.screenWidth * 0.9
      : context.screenWidth < 1600 
      ? context.screenWidth * 0.5 
      :  context.screenWidth * 0.4,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20.0),
    ),
    padding: const EdgeInsets.all(30.0),
    height: 800,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
       const Text("Experience",
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.w600,
          ),
        ),
       const SizedBox(height: 20.0),
      // Timeline builder
      
      Timeline.tileBuilder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        builder: TimelineTileBuilder.fromStyle(
          itemCount: 4,
          contentsAlign: ContentsAlign.alternating,
          contentsBuilder: (context, item){
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
  
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('19 Apr 2021',
                      style: TextStyle(fontSize: 12.0,
                      color: Colors.indigo,
                      ),
                      ), // for Date


                      Text('Got Job!',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                      ),  //For Title

                      Text('Virtaul Assistant Roles while working on different Profiles',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey.shade700,
                      ),
                      ), // for Description
                    ],
                  ),
                ),
            );
          }
          ),
        ),


      ],
    ),
    );
  }
}