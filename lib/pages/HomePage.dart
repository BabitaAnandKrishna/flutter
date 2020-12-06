import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/widgets/City.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.network("https://image.freepik.com/free-vector/travel-world-road-trip-tourism-landmarks-globe-concept-website-template-illustration-modern-flat-design_207954-6.jpg"),
              Padding(
                padding: const EdgeInsets.only(top:50,left: 20),
                child: Text("Let's Explore", style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white60,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(top:90,left: 20),
                child: Text("New Cities", style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                )),
              ),

            ],
          ),
          CityPage(),
        ],
      )
    );
  }
}
