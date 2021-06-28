import 'package:emarket/constanst.dart';
import 'package:emarket/screen/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

bool isValid = false;

class _State extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.fromLTRB(10, 100, 10, 10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Plan App',
                      style: TextStyle(
                          color: PrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                      textAlign: TextAlign.center,
                    )),
                Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Hai, Selamat Datang !!',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    )),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 50, 10, 10),
                  child: TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      labelText: 'User Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      labelText: 'Password',
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    // print('lupa password');
                  },
                  textColor: PrimaryColor,
                  child: Text(
                    'Lupa Password',
                  ),
                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: PrimaryColor,
                      child: Text('Masuk'),
                      onPressed: () {
                        if ((nameController.text) != '') {
                          isValid = true;
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return HomeScreen(name: nameController.text);
                          }));
                        } else {
                          isValid = false;
                          print('nama harus diisi');
                        }
                      },
                    )),
                Container(
                    margin: EdgeInsets.only(top: 250),
                    child: Row(
                      children: <Widget>[
                        Text('Belum punya akun?'),
                        FlatButton(
                          textColor: PrimaryColor,
                          child: Text(
                            'Daftar',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {},
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ))
              ],
            )));
  }
}
