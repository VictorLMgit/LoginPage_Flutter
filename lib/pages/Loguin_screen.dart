// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login_screen/pages/home_page.dart';

class LoguinScreen extends StatefulWidget {
  const LoguinScreen({Key? key}) : super(key: key);
  static String tag = 'login-page';
  @override
  State<LoguinScreen> createState() => _LoguinScreenState();
}

class _LoguinScreenState extends State<LoguinScreen> {
  
  @override
  Widget build(BuildContext context) {
    
    _log(){
      Navigator.of(context).pushNamed(HomePage.tag);
    }
  
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48,
        child: Image.asset('images/logo.png'),
      )
    );
    
    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: "",
      decoration: InputDecoration(
        label: Text("E-mail"),
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32)
        )
      ),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: "",
      obscureText: true,
      decoration: InputDecoration(
        label: Text("Password"),
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32)
        )
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Material(
        borderRadius: BorderRadius.circular(30),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          onPressed: (){
            Navigator.of(context).pushNamed(HomePage.tag);
          },
          minWidth: 200,
          height: 42,
          color: Colors.lightBlueAccent,
          child: Text("Log In", style: TextStyle(color: Colors.white),)  
          ),
        ),
      );

    final forgotLabel = FlatButton(
      onPressed: (){}, 
      child: Text("Forgot Password?", style: TextStyle(color: Colors.black54)) 

      
      );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 24),
          children: [
            logo,
            SizedBox(height: 48,),
            email,
            Divider(color: Colors.white,),
            password,
            SizedBox(height: 24,),
            loginButton,
            forgotLabel
          ],
        ),
      ),
    );
    
  }
}
