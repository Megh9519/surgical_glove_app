import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget{

  @override
  _LoginPageState createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage>{
  String app_name = "Surgical Glove App";
  String app_description = "SmartGloves Surgical Training";

  Widget _logindata(String text, String textBox){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          text,
          style: TextStyle(
              color: Colors.white
          ),
        ),
        SizedBox(height:10),
        Container(
          alignment: Alignment.centerLeft,
          height: 60,
          child: TextField(
            keyboardType: TextInputType.text,
            style: TextStyle(
                color: Colors.white
            ),
            decoration: InputDecoration(
              enabledBorder:  OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.white
                  )
              ),
              focusedBorder:  OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.white
                  )
              ),
              contentPadding: EdgeInsets.only(top: 14),
              hintText: textBox,

            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 0, 0),
      appBar: AppBar(
        title: Text(app_name),
      ),
      body: Container(
        // width: MediaQuery.of(context).size.width,
        //  height: MediaQuery.of(context).size.height,
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                  image: AssetImage('assets/home.jpg')
              ),
              SizedBox(height: 30),
              _logindata("Username","Enter your username"),
              SizedBox(height: 10),
              _logindata("Password", "Enter your password")
            ],
          )
      ),
    );
  }

}