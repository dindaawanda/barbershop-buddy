import 'package:flutter/material.dart';
import 'haircut_screen.dart';
import 'haircuts_data.dart';

class LookbookScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Haircuts Lookbook',
            textAlign: TextAlign.center,

            style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'Glacial',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
           if (constraints.maxWidth<=600) {
             return LookbookGrid(gridCount: 2);
           }else if (constraints.maxWidth<=900) {
             return LookbookGrid(gridCount: 3);
           }else{
             return LookbookGrid(gridCount: 5);
           }
          },
        ),backgroundColor: Colors.grey,
    );
  }
}

class LookbookGrid extends StatelessWidget{
  var glacialStyle = TextStyle(fontFamily: 'Glacial');
  final int gridCount;

  LookbookGrid({required this.gridCount});

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GridView.count (
        //scrollDirection: Axis.horizontal,
        crossAxisCount: gridCount,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        children: generalList.map((model) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HaircutScreen(model: model);
              }));
            },
            child: Card(
              //color: Colors.grey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Image.asset(
                      model.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  //SizedBox(height: ),
                  Row(
                    children: [
                      FavoriteButton(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:3.0),
                            child: Text(
                              model.name,

                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Glacial',
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text(
                                'category : ${model.category}',

                                style: glacialStyle
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ], //children
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

