import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
    home: new cardprofile(),
    routes: <String, WidgetBuilder>{
      'HalTelpon' : (BuildContext context) => new HalTelpon(),
      'Halemail'  : (BuildContext context) => new Halemail(),
      'HalAlamat' : (BuildContext context) => new HalAlamat(),
      'HalJenis'  : (BuildContext context) => new HalJenis(),
      'HalHobi'   : (BuildContext context) => new HalHobi(),
      'HalCita'   : (BuildContext context) => new HalCita(),
    },
  ));

  class cardprofile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/img/bobby.jpeg'),
            ),
            Text(
              'Bobby', 
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 40.0,
              color: Colors.white,
              fontWeight: FontWeight.bold),
            ),
            Text(
              'FLUTTER DEVELOVER',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.teal.shade100,
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold),
           ),
           SizedBox(
             height: 20.0,
             width: 150.0,
             child: Divider(
               color: Colors.teal.shade100,
             ),
           ),
          
            Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(Icons.phone,color: Colors.teal,),
                  title: new TextButton( child: Text('+62 85346317917', style: (
                    TextStyle(
                      color: Colors.teal,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0
                    )
                  ),),
                  onPressed: () {
                    Navigator.pushNamed(context, 'HalTelpon');
                  },
                  ),                
                ),
              ),
              
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(Icons.mail,color: Colors.teal,),
                  title: new TextButton( child: Text('bobby1971@gmail.com', style: (
                    TextStyle(
                      color: Colors.teal,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0
                    )
                  ),),
                  onPressed: () {
                    Navigator.pushNamed(context, 'Halemail');
                  },
                  ),
                ),
              ),


              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(Icons.home,color: Colors.teal,),
                  title: new TextButton( child: Text('JL.Pangambangan', style: (
                    TextStyle(
                      color: Colors.teal,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0
                    )
                  ),),
                  onPressed: () {
                    Navigator.pushNamed(context, 'HalAlamat');
                  },
                  ),
                ),
              ),


              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(Icons.person,color: Colors.teal,),
                  title: new TextButton( child: Text('Laki - laki', style: (
                    TextStyle(
                      color: Colors.teal,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0
                    )
                  ),),
                  onPressed: () {
                    Navigator.pushNamed(context, 'HalJenis');
                  },
                  ),
                ),
              ),


              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(Icons.thumb_up,color: Colors.teal,),
                  title: new TextButton( child: Text('Olahraga', style: (
                    TextStyle(
                      color: Colors.teal,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0
                    )
                  ),),
                  onPressed: () {
                    Navigator.pushNamed(context, 'HalHobi');
                  },
                  ),
                ),
              ),


              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(Icons.assignment,color: Colors.teal,),
                  title: new TextButton( child: Text('Menjadi Pembisnis Hebat', style: (
                    TextStyle(
                      color: Colors.teal,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0
                    )
                  ),),
                  onPressed: () {
                    Navigator.pushNamed(context, 'HalCita');
                  },
                  ),
                ),
              )


            ],
          )),
        ),
      );
    }
  }

  class HalTelpon extends StatelessWidget { 
    @override
    Widget build(BuildContext context) {
      return new Scaffold(
        backgroundColor: Colors.grey,
        appBar: new AppBar(
          backgroundColor: Colors.teal,
          title: new Text('Detail Telepon'),
        ),
        body: new Center(
          child: new Text('Telpon Lengkap = 085346317917', style: (
            TextStyle(
                      color: Colors.white,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0
                    )
          ),),
        ),
      );
    }
  }

  class Halemail extends StatelessWidget { 
    @override
    Widget build(BuildContext context) {
      return new Scaffold(
        backgroundColor: Colors.grey,
        appBar: new AppBar(
          backgroundColor: Colors.teal,
          title: new Text('Detail Email'),
        ),
        body: new Center(
          child: new Text('Email saya = bobby1971@gmail.com', style: (
            TextStyle(
                      color: Colors.white,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0
                    )
          ),),
        ),
      );
    }
  }

  class HalAlamat extends StatelessWidget { 
    @override
    Widget build(BuildContext context) {
      return new Scaffold(
        backgroundColor: Colors.grey,
        appBar: new AppBar(
          backgroundColor: Colors.teal,
          title: new Text('Detail Alamat'),
        ),
        body: new Center(
          child: new Text('Alamat Lengkap = JL.Pangambangan sungai bilu laut', style: (
            TextStyle(
                      color: Colors.white,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0
                    )
          ),),
        ),
      );
    }
  }

  class HalJenis extends StatelessWidget { 
    @override
    Widget build(BuildContext context) {
      return new Scaffold(
        backgroundColor: Colors.grey,
        appBar: new AppBar(
          backgroundColor: Colors.teal,
          title: new Text('Detail Jenis Kelamin'),
        ),
        body: new Center(
          child: new Text('Jenis Kelamin = Pria / Laki - laki', style: (
            TextStyle(
                      color: Colors.white,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0
                    )
          ),),
        ),
      );
    }
  }

  class HalHobi extends StatelessWidget { 
    @override
    Widget build(BuildContext context) {
      return new Scaffold(
        backgroundColor: Colors.grey,
        appBar: new AppBar(
          backgroundColor: Colors.teal,
          title: new Text('Detail Hobi'),
        ),
        body: new Center(
          child: new Text('Hobi saya = Agar bisa menjaga kesehehatan dengan berolahraga', style: (
            TextStyle(
                      color: Colors.white,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0
                    )
          ),),
        ),
      );
    }
  }

  class HalCita extends StatelessWidget { 
    @override
    Widget build(BuildContext context) {
      return new Scaffold(
        backgroundColor: Colors.grey,
        appBar: new AppBar(
          backgroundColor: Colors.teal,
          title: new Text('Detail 5 Tahun Kedapan'),
        ),
        body: new Center(
          child: new Text('5 Tahun Kedepan = Dalam 5 Tahun Kedepan Hal Yang Ingin Digapai adalah ingin menjadi Pembisnis hebat', style: (
            TextStyle(
                      color: Colors.white,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0
                    )
          ),),
        ),
      );
    }
  }  
          