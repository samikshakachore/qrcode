import 'package:flutter/material.dart';
import 'package:qrcode/generate.dart';
import 'package:qrcode/scan.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("homepage"),
        centerTitle: true,

        leading: Icon(Icons.menu, color: Colors.white,),
        backgroundColor:  Color.fromRGBO(0, 128, 0, 100),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.mic, color: Colors.white,),
            onPressed: (){

            },
          )
        ],

      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Container(
                height: 200,
                width: 200,
                child:  Image(image: NetworkImage("https://assets.website-files.com/5f493c28a3dde5b81ae21dcf/5fc5173af052f99eedf914d8_QR%20Code%20Template-04.png"),
                // Image(ag: AssetImage ('assets/scanqr.jpg'),
                ),
                padding: EdgeInsets.all(20.0),),

            ),

            //Image(image: NetworkImage("https://media.istockphoto.com/vectors/qr-code-scan-phone-icon-in-comic-style-scanner-in-smartphone-vector-vector-id1166145556")),
            flatButton("Scan CODE", ScanPage()),
            SizedBox(height: 40.0,),
            flatButton("Generate CODE", GeneratePage()),
          ],
        ),
      ),
    );
  }

  Widget flatButton(String text, Widget widget) {
    return FlatButton(
      padding: EdgeInsets.all(15.0),
      onPressed: () async {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => widget));
      },
      child: Text(
        text,
        style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),
      ),
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.grey,width: 3.0),
          borderRadius: BorderRadius.circular(20.0)),
    );
  }
}