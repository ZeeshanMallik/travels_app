import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travels_app/place_data.dart';

import '../place_data.dart';
import 'place_detail.dart';


class PlaceList extends StatelessWidget{

  List<PlaceData> items = getPlaceData();

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(
            body:ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  PlaceData eachItem = items[index];
                  print(eachItem);
                return GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PlaceDetail(position: index,)),
                    );
                    print(index);
                  },
                  child: PlaceItem(data: eachItem,),
                );
              },
            )
            )
    );

  }
}


class PlaceItem extends StatelessWidget{

  PlaceItem({super.key, required this.data});

  PlaceData data;

  @override
  Widget build(BuildContext context) {

    return SizedBox(
          height: 100,
          child: Row(
            children: [
              Image.asset(data.url),
          Column(
              children: [
              Text(data.headline),
                Text(data.description)
          ],
                )

                ],
          ),
    );
  }

}