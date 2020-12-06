import 'package:flutter/material.dart';
import 'package:travelapp/model/Holet.dart';

class HotelPage extends StatefulWidget {
  final List<Hotel>hotellist;
  HotelPage(this.hotellist);

  @override
  _HotelPageState createState() => _HotelPageState();
}

class _HotelPageState extends State<HotelPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // child: ListView.builder(
      //   shrinkWrap: true,
      //     physics: NeverScrollableScrollPhysics(),
      //     itemCount: widget.hotellist.length,
      //     itemBuilder: (context,index){
      //       return Card(
      //         child: Container(
      //           child: Row(
      //             children: [
      //               Image.network(widget.hotellist[index].hotelImage,height: 100,width: 100,fit: BoxFit.cover,),
      //             ],
      //           ),
      //         ),
      //       );
      //     }
      // ),
    );
  }
}
