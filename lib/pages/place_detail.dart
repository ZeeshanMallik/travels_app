import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../place_data.dart';

class PlaceDetail extends StatelessWidget{

  PlaceDetail({
    super.key,  required this.position
  });

  int position;

  PlaceData getSelectedData(int pos) {
    List<PlaceData> items = getPlaceData();
    return items[pos];
  }


  @override
  Widget build(BuildContext context) {

   /* NewsData data =  getSelectedData(2);
    String headline = data.headline;*/

    return MaterialApp(
        home: Scaffold(
          body:  Column(
              children: [
                Image.asset("${getSelectedData(position).url}"),
                Text("${getSelectedData(position).headline}"),
                Text("${getSelectedData(position).description}"),
              ],
          ),
        )
    );

  }

}
