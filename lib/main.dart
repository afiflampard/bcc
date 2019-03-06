import 'package:flutter/material.dart';
import 'package:bcc/dashboard.dart';
void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Hosque",
    home: new Login(),
  ));
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: ListView(
          padding: const EdgeInsets.all(0.0),
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 90),
                )
              ],
            ),
            Stack(
              //alignment: AlignmentDirectional.bottomCenter,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    // Padding(
                      // padding: const EdgeInsets.all(10.0),
                    // ),
                    Image.asset('img/318585.png'),
                    Padding(padding: const EdgeInsets.only(top: 30)),
                    new Text(
                      "HOSQUE",
                      style: TextStyle(fontSize: 30.0, color: Colors.blue[300]),
                    ),
                    Container(
                      padding: const EdgeInsets.all(40.0),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            style: TextStyle(
                              color: Colors.blue[300],
                            ),
                            decoration: InputDecoration(
                                prefixStyle: new TextStyle(
                                  color: Colors.blue[300],
                                ),
                                icon: Icon(
                                  Icons.person,
                                  color: Colors.blue[300],
                                ),
                                hintText: "Username",
                                hintStyle: TextStyle(color: Colors.blue[300])),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                          ),
                          TextField(
                            style: TextStyle(
                              color: Colors.blue[300],
                            ),
                            obscureText: true,
                            decoration: InputDecoration(
                                prefixStyle: new TextStyle(
                                  color: Colors.blue[300],
                                ),
                                icon: Icon(
                                  Icons.lock,
                                  color: Colors.blue[300],
                                ),
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.blue[300])),
                          ),
                          Container(
                            width: 500,
                            margin: EdgeInsets.only(top: 20),
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()),);
                              },
                              padding: EdgeInsets.all(12),
                              color: Colors.lightBlueAccent,
                              child: Text('Login', style: TextStyle(color: Colors.white),),
                            ),
                          ),
                          Container(
                              
                              child: new FlatButton(
                                onPressed: () {},
                                child: Text(
                                  "Lupa akun",
                                  style: TextStyle(
                                      color: Colors.blue[300],
                                      fontSize: 15.0,
                                      letterSpacing: 0.5),
                                ),
                              )),
                              Container(

                              child: new FlatButton(
                                onPressed: () {},
                                child: Text(
                                  "Daftar Akun",
                                  style: TextStyle(
                                      color: Colors.blue[300],
                                      fontSize: 15.0,
                                      letterSpacing: 0.5),
                                ),
                              ))
                        ],
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
