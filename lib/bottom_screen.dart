import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const URLinstagram = 'https://www.instagram.com/himate_id/?hl=id';
const URLwhatsapp = 'https://api.whatsapp.com/send?phone=6281229763579&text=Hi%20Mate!%0ASaya%20mau%20reservasi.';
const URLfacebook = 'https://www.facebook.com/himate.id/';
const URLmap = 'https://www.google.com/maps/place/Hi+Mate+Hair+Studio/@-7.361196,109.9044594,17z/data=!3m1!4b1!4m5!3m4!1s0x2e7aa1e13d1abdcb:0xf7b7cea095008de6!8m2!3d-7.3611323!4d109.9066491';


class BottomScreen extends StatelessWidget{
  var glacialBold = TextStyle(fontFamily: 'Glacial',color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18);
  var glacialWhite = TextStyle(fontFamily: 'Glacial',color: Colors.white60,fontSize: 18);
  @override
  Widget build(BuildContext context){
    return  Container(    //keseluruhan
            padding: EdgeInsets.symmetric(vertical: 20),
            color: Colors.black,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(//bagian kiri
                    padding: const EdgeInsets.symmetric(vertical: 100,horizontal: 50),
                    color: Colors.black,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'TENTANG KAMI',
                          style: glacialBold,
                        ),
                        Container(
                          padding: const EdgeInsets.only(bottom:30,right:10,top:16),
                          child: Text(
                            'Barbershop kami memiliki vibes yang muda dan bersemangat. Kami mengedepankan kenyamanan pelanggan. Kami hadir pada tahun 2021 dan berkomitmen untuk memberi pelayanan yang memuaskan pelanggan.',
                            style: TextStyle(fontFamily: 'Glacial',color: Colors.white60,fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex:1,
                  child: Container(//bagian kanan
                    padding: EdgeInsets.symmetric(vertical: 100, ),
                    color: Colors.black,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'CONTACT US',
                          textAlign: TextAlign.center,
                          style: glacialBold,
                        ),
                        Container(//instagram
                          padding: const EdgeInsets.only(right:30,top:16),
                          child: Row(
                            children: [
                              Icon(
                                Icons.send,
                                color: Colors.white,
                                size:20,
                              ),
                              TextButton(
                                style: TextButton.styleFrom(textStyle: glacialWhite,primary: Colors.white,
                                  onSurface: Colors.white,),
                                onPressed: () {launch(URLinstagram);},
                                child: const Text('Instagram : \n  @himate_id'),
                              ),
                            ],
                          ),
                        ),
                        Container(//whatsapp
                          padding: const EdgeInsets.only(right:30,top:8),
                          child: Row(
                            children: [
                              Icon(
                                Icons.call,
                                color: Colors.white,
                                size:20,
                              ),
                              Expanded(
                                child: TextButton(
                                  style: TextButton.styleFrom(textStyle: glacialWhite,primary: Colors.white,
                                    onSurface: Colors.white,),
                                  onPressed: () {launch(URLwhatsapp);},
                                  child: const Text('Whatsapp : \n   +6281229763579'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(//facebook
                          padding: const EdgeInsets.only(bottom:30,right:30,top:8),
                          child: Row(
                            children: [
                              Text(
                                'f',
                                style: TextStyle(fontFamily:'Klavika',fontSize: 28, color: Colors.white),
                              ),
                              Expanded(
                                child: TextButton(
                                  style: TextButton.styleFrom(textStyle: glacialWhite,primary: Colors.white,
                                    onSurface: Colors.white,),
                                  onPressed: () {launch(URLfacebook);},
                                  child: const Text(' Facebook : \n  Hi Mate'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(//place
                          padding: const EdgeInsets.only(right:30,top:8),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.place,
                                color: Colors.white,
                                size:20,
                              ),
                              Expanded(
                                child: TextButton(
                                  style: TextButton.styleFrom(textStyle: glacialWhite,primary: Colors.white,
                                    onSurface: Colors.white,),
                                  onPressed: () {launch(URLmap);},
                                  child: const Text('Jl. S. Parman No.65, Sukoyoso, Pagerkukuh, Kec. Wonosobo, Kabupaten Wonosobo, Jawa Tengah 56314'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}


