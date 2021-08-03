import 'package:barbershop_buddy/bottom_screen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'lookbook_screen.dart';
import 'bottom_screen.dart';

class MainScreen extends StatelessWidget{
  var glacialStyle = TextStyle(fontFamily: 'Glacial');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Barbershop Buddy',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14.0,
            fontFamily: 'Glacial',
           ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height:710,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children:[
                    Image.asset('images/mainScreen.jpg'),
                    //Image.asset('images/logo.png'),
                    //Image.asset('images/galeri0.jpg'),
                    Image.asset('images/mainScreen2.jpg'),
                  ]
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 150, bottom:30),
                child: Text(
                  'Barbershop',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Glacial',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10,horizontal:30, ),
                child: Text(
                  'Barbershop kami memiliki vibes yang muda dan bersemangat. Kami mengedepankan kenyamanan pelanggan. Oleh karenanya, kami sediakan fasilitas ruang tunggu yang luas dengan wifi yang cepat. Setelah menunggu, Anda dapat menikmati berbagai pelayanan yang kami sediakan.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Glacial',

                  ),
                )
              ),
              Container(
                margin: EdgeInsets.only(top:30.0,bottom:110),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                    Column(
                     children: <Widget>[
                      Icon(Icons.calendar_today),
                      SizedBox(height:8.0),
                      Text('Open Everyday',
                      style: glacialStyle,
                      ),
                      ],
                    ),
                    Column(
                    children: <Widget>[
                      Icon(Icons.access_time_outlined ),
                      SizedBox(height:8.0),
                      Text('10:00 - 20:00',
                          style: glacialStyle,
                      ),
                      ],
                    ),
                ],
              ),
              ),
              SizedBox(height:50,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(//bagian kiri
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 181,horizontal:6),
                      color: Colors.lightGreen,
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Bingung ingin potongan rambut seperti apa?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Glacial',
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(bottom:20,left:30,right:30,top:16),
                            child: Text(
                              'Silakan cek kumpulan gaya rambut yang bisa kamu aplikasikan saat datang ke barbershop kami dengan klik tombol di bawah ini ya!',
                              textAlign: TextAlign.center,
                              style: glacialStyle,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return LookbookScreen();
                              }));
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                            ),
                            child: const Text(
                                'Pilihan Gaya Rambut',
                                style: TextStyle(fontFamily: 'Glacial') ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(//bagian kanan
                    flex:1,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 200,horizontal:10),
                      color: Colors.grey,
                      child: Column(
                        children: [
                          Text(
                            'Book An Appointment',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Glacial',
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(bottom:30,left:30,right:30,top:16),
                            child: Text(
                              'Sudah mendapat inspirasi gaya rambut yang cocok untuk kamu? Klik tombol di bawah ini untuk menghubungi kami!',
                              textAlign: TextAlign.center,
                              style: glacialStyle,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {launch(URLwhatsapp);},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                            ),
                            child: const Text(
                                'Hubungi kami',
                                style: TextStyle(fontFamily: 'Glacial') ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              BottomScreen(),

             ],
          ),
        ),
      ),
    );
  }
}
