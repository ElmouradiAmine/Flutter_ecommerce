import 'package:first_app/pages/Home.dart';
import 'package:flutter/material.dart';

class Auth extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AuthPageState();
  }
}

class _AuthPageState extends State<Auth> {
  String _emailid;
  String _password;
  bool _acceptterms = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("My app"),
        ),
        body: Container(
          //decoration: BoxDecoration(
         //     image: DecorationImage(
        //          fit: BoxFit.cover,
         //         colorFilter: ColorFilter.mode(
         //             Colors.black.withOpacity(0.4), BlendMode.dstATop),
         //         image: AssetImage('assets/background.jpg')
         //        )
         //         ),
                  padding: EdgeInsets.all(11.0),
          child: Center(
              
              child: SingleChildScrollView(
                  child: Column(
            children: <Widget>[
              TextField(
                 decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "Email",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
                keyboardType:TextInputType.emailAddress,
                onChanged: (String value) {
                  setState(() {
                    _emailid = value;
                  });
                },
              ),
              SizedBox(height: 10.0,),
              TextField(
                decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "Password",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
                obscureText: true,
                onChanged: (String value) {
                  setState(() {
                    _password = value;
                  });
                },
              ),
               SizedBox(height: 5.0,),
              SwitchListTile(
                value: _acceptterms,
                onChanged: (bool value) {
                  setState(() {
                    _acceptterms = value;
                  });
                },
                title: Text("Accept Terms"),
              ),
              RaisedButton(
                elevation: 5.0,
                color: Colors.blueAccent,
                child: Text("Log In"),
                onPressed: () {
                  Navigator.pushReplacementNamed(
                    context,
                    '/home',
                  );
                },
              ),
            ],
          ))),
        ));
  }
}
