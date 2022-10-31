import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:port/utils/animated_contact.dart';
import 'package:port/utils/socialrow.dart';
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
      margin: const EdgeInsets.only(
        top: 20.0,
      ),
      width: context.screenWidth < 900 
      ? context.screenWidth * 0.9
      : context.screenWidth < 1600 
      ? context.screenWidth * 0.3 
      :  context.screenWidth * 0.2,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20.0),
    ),
  
    padding: EdgeInsets.all(25.0),
    height: 800,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Image.asset("assets/dev.png",
        height: 156.0,
        ),
        Text("Praveen Maurya",
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.w600,
        ),
        ),
        Padding(padding: const EdgeInsets.symmetric(vertical: 8.0,),),
        Text("I am a Freelancer and I am looking for Development & VA roles across india or usa.",
        textAlign: TextAlign.center,
        ),

        // ---

        Wrap(
          alignment: WrapAlignment.center,
          spacing: 8.0,
          runSpacing: 8.0,
          children: const [
            Chip(
          label:
          Text("Flutter Developer"),
          labelStyle: TextStyle(
            color: Colors.white,
            fontSize: 15.0,
          ),
          backgroundColor: Colors.green,
          padding: EdgeInsets.all(8.0),
        ),
        Chip(
          label:
          Text("Virtual Assistant"),
          labelStyle: TextStyle(
            color: Colors.white,
            fontSize: 15.0,
          ),
          backgroundColor: Colors.green,
          padding: EdgeInsets.all(8.0),
        ),
          ],
        ),
        Divider(),
        // Container
       
        AnimatedContact(
          iconData: FontAwesomeIcons.github,
          title: "GitHub",
          subtitle: "praveenmaurya09",
          onTap: (){},
        ),
        AnimatedContact(
          iconData: FontAwesomeIcons.medium,
          title: "Medium",
          subtitle: "praveenmaurya09",
          onTap: (){},
        ),
        AnimatedContact(
          iconData: FontAwesomeIcons.linkedin,
          title: "LinkedIn",
          subtitle: "praveenmaurya09",
          onTap: (){},
        ),
        

          ],
        ),
        
        Column(
          children: [
            Divider(),
            SocialRow(),
          ],
        )
          
        
        ],
    ),



    );
  }
}