import 'package:flutter/material.dart';
import 'package:travelapp/model/travel.dart';
import 'package:travelapp/pages/DetailPage.dart';

class CityPage extends StatefulWidget {
  @override
  _CityPageState createState() => _CityPageState();
}

class _CityPageState extends State<CityPage> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
        itemCount: cities.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (_)=>DetailPage(cities[index])));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                        child: Hero(
                          //tag: "tag1",
                          tag: cities[index].cityName,

                            child: Image.network(cities[index].cityImage,height: 200,width: 200,fit: BoxFit.cover,))),
                    Padding(
                      padding: const EdgeInsets.only(top:133.0),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left:10,top: 3),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.place,size: 15,color: Colors.white,),
                                  // Hero(
                                  //   tag: cities[index].cityImage,
                                    //child:
                                    Text(cities[index].cityName,style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                    ),),
                                 // )
                                ],
                              ),
                              Text(cities[index].countryName,style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),),
                            ],
                          ),
                        ),
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blue.withOpacity(0.8),
                        ),

                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
