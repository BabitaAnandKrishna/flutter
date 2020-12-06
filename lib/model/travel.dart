import 'file:///C:/Users/anand/AndroidStudioProjects/travelapp/lib/model/place.dart';
import 'Holet.dart';

class City{
  String cityName;
  String countryName;
  String cityImage;

  List<Place>places;
  List<Hotel>citihotels;
  City({this.cityName,this.citihotels,this.countryName,this.cityImage,this.places});
}

List<City>cities=[
  City(
    cityName: "London",
    cityImage: "https://image.freepik.com/free-photo/low-angle-shot-famous-historic-tower-bridge-london-during-evening-time_181624-14112.jpg",
    countryName: "UK",
    places: [
      Place(placeName:"London Eye",
          placeImage:"https://image.freepik.com/free-photo/london-charles-i-statue_1426-1641.jpg"),
      Place(placeName:"Tower Bridge",
          placeImage:"https://image.freepik.com/free-photo/london-sunset-skyline-bigben-thames_79295-6755.jpg"),
      Place(placeName:"Big Ben",
          placeImage:"https://image.freepik.com/free-photo/panoramic-view-big-ben-from-bridge-london_268835-1399.jpg"),
         ],

    citihotels: [
      Hotel(
        hotelName: "Hilten",
        hotelImage: "",
        hotelDescription: "",
        hotelPrice: "1200",
        hotelRating: "4",
        hotelAddress: "22 Park ln, MayFair, London W1K 1BE .020 749"
      ),
      Hotel(
          hotelName: "Hilten",
          hotelImage: "",
          hotelDescription: "",
          hotelPrice: "1200",
          hotelRating: "4",
          hotelAddress: "22 Park ln, MayFair, London W1K 1BE .020 749"
      ),
      Hotel(
          hotelName: "Hilten",
          hotelImage: "",
          hotelDescription: "",
          hotelPrice: "1200",
          hotelRating: "4",
          hotelAddress: "22 Park ln, MayFair, London W1K 1BE .020 749"
      ),
    ],
  ),
  City(
    cityName: "Paris",
    cityImage: "https://image.freepik.com/free-photo/low-angle-shot-famous-historic-tower-bridge-london-during-evening-time_181624-14112.jpg",
    countryName: "Europe",
    places: [
      Place(placeName:"London Eye",
          placeImage:"https://image.freepik.com/free-photo/london-charles-i-statue_1426-1641.jpg"),
      Place(placeName:"Tower Bridge",
          placeImage:"https://image.freepik.com/free-photo/london-sunset-skyline-bigben-thames_79295-6755.jpg"),
      Place(placeName:"Big Ben",
          placeImage:"https://image.freepik.com/free-photo/panoramic-view-big-ben-from-bridge-london_268835-1399.jpg"),
    ],

    citihotels: [
      Hotel(
          hotelName: "Hilten",
          hotelImage: "",
          hotelDescription: "",
          hotelPrice: "1200",
          hotelRating: "4",
          hotelAddress: "22 Park ln, MayFair, London W1K 1BE .020 749"
      ),
      Hotel(
          hotelName: "Hilten",
          hotelImage: "",
          hotelDescription: "",
          hotelPrice: "1200",
          hotelRating: "4",
          hotelAddress: "22 Park ln, MayFair, London W1K 1BE .020 749"
      ),
      Hotel(
          hotelName: "Hilten",
          hotelImage: "",
          hotelDescription: "",
          hotelPrice: "1200",
          hotelRating: "4",
          hotelAddress: "22 Park ln, MayFair, London W1K 1BE .020 749"
      ),
    ],
  ),

    // ],
  // ),
];