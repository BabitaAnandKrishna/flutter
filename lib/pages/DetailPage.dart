import 'package:flutter/material.dart';
import 'package:travelapp/model/Holet.dart';
import 'package:travelapp/model/travel.dart';
import 'package:travelapp/widgets/hotel.dart';

class DetailPage extends StatefulWidget {
  final City objcities;
  DetailPage(this.objcities);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
              //tag: "tag1",
            tag: widget.objcities.cityName ,
              child: Image.network(widget.objcities.cityImage,height: 200,width:400,fit: BoxFit.cover,)),


             /* Hero(
                  tag: widget.objcities.cityImage,
                  child: Text(widget.objcities.cityName,style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),)) */
          
          Padding(
            padding: const EdgeInsets.only(left:10.0,top: 10),
            child: Text("Places", style: TextStyle(fontSize: 20,
              fontWeight:  FontWeight.bold,

            ),),
          ),
          Container(
            height:120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: widget.objcities.places.length,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                            child: Image.network(widget.objcities.places[index].placeImage,height: 80,width: 80,fit: BoxFit.cover,)),
                        SizedBox(height: 5,),
                        Text(widget.objcities.places[index].placeName),

                      ],
                    ),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(left:10.0,top: 10),
            child: Text("Hotels", style: TextStyle(fontSize: 20,
              fontWeight:  FontWeight.bold,

            ),),
          ),
          HotelPage(widget.objcities.citihotels),
        ],
      ),
    );
  }
}
