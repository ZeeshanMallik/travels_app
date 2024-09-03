
class PlaceData {
  String url;
  String headline = "";
  String description = "";

  PlaceData({
    required this.url,
    required this.headline,
    required this.description
  });
}


List<PlaceData> getPlaceData() {

  List<PlaceData> items = [
    PlaceData(url: "assets/images/bangalore.jpeg", headline: "Bangalore", description: "this is bangalore"),
    PlaceData(url: "assets/images/delhi.jpeg", headline: "Delhi", description: "this is Delhi"),
    PlaceData(url: "assets/images/chennai.jpeg", headline: "Chennai", description: "this is Chennai"),
    PlaceData(url: "assets/images/mumbai.jpeg", headline: "Mumbay", description: "this is Mumbay"),
    PlaceData(url: "assets/images/agra.jpeg", headline: "Agra", description: "this is Agra"),
    PlaceData(url: "assets/images/pune.jpeg", headline: "Pune", description: "this is Pune"),
    PlaceData(url: "assets/images/indore.jpeg", headline: "Indore", description: "this is Indore"),
    PlaceData(url: "assets/images/kolkata.jpeg", headline: "Kolkata", description: "this is Kolkata"),
    PlaceData(url: "assets/images/hyderabad.jpeg", headline: "Hyderabad", description: "this is hyderabad"),
  ];

  return items;
}