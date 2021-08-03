import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'haircuts_data.dart';
import 'bottom_screen.dart';
import 'main_screen.dart';


import 'package:url_launcher/url_launcher.dart';

const URLwhatsapp = 'https://api.whatsapp.com/send?phone=6281229763579&text=Hi%20Mate!%0ASaya%20mau%20reservasi.';

class HaircutScreen extends StatelessWidget{
  final Haircuts model;

  HaircutScreen({required this.model});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack( //BackButton & FavoriteButton
                  children: <Widget>[
                    SafeArea(
                      child: Padding(
                        padding:const EdgeInsets.symmetric(vertical: 8.0,horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[
                            BackButton(),
                            IconButton(
                              onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) {return MainScreen();}),);},
                              icon: Icon(Icons.home),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]
              ),
              Row( //model image & description
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(left:18.0,top:10,right:8),
                      child: Image.asset(model.image),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top:16.0),
                          child: Text(
                            model.name,
                              textAlign:TextAlign.center,
                              style: TextStyle(
                                fontSize:30.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Glacial',
                              )
                          )
                        ),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'category : ${model.category}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize:16.0,
                                fontFamily: 'Glacial'
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            model.description,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize:16.0,
                                fontFamily: 'Glacial'
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height:20,),
              Container( //appointment book
                padding: EdgeInsets.symmetric(vertical: 40),
                color: Colors.grey,
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text('Book an Appointment?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Glacial',
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:6.0,bottom: 14,),
                          child: Text('Silakan hubungi kami untuk reservasi waktu dengan klik tombol di bawah ini!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Glacial',
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: (){launch(URLwhatsapp);},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                      ),
                      child: const Text(
                          'Book lewat Whatsapp',
                          style: TextStyle(fontFamily: 'Glacial') ),
                    ),
                  ],
                ),
              ),
              SizedBox(height:16),
              BottomScreen(),
            ],
          ),
        ),
      ),
    );
  }
}

class BackButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey,
      child: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          }
      ),
    );

  }
}


class FavoriteButton extends StatefulWidget{
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton>{
  bool isFavorite = false;

  @override
  Widget build(BuildContext context){
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed:(){
        setState((){
          isFavorite= !isFavorite;
        }
        );
      },
    );
  }
}





