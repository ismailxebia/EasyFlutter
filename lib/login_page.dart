import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';

  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        //child: Image.asset('assets/logo.png'),
      ),
    );

    final txtEmail = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Email',
        style: TextStyle(
            fontSize: 14.0,
            color: Colors.blueGrey,
            fontWeight: FontWeight.bold,
            fontFamily: "Monserrat"),
      ),
    );

    final txtPassword = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Password',
        style: TextStyle(
            fontSize: 14.0,
            color: Colors.blueGrey,
            fontWeight: FontWeight.bold,
            fontFamily: "Monserrat"),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'helmiismail@mekar.id',
      style: TextStyle(
          fontSize: 14.0, color: Colors.black54, fontFamily: "Monserrat"),
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(22.0, 15.0, 22.0, 15.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: 'some password',
      obscureText: true,
      style: TextStyle(
          fontSize: 14.0, color: Colors.black54, fontFamily: "Monserrat"),
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(22.0, 15.0, 22.0, 15.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginNew = InkWell(
      onTap: () => print('Pressed dsini ya'),
      child: new Container(
        //width: 100.0,
        height: 50.0,
        decoration: new BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color.fromRGBO(178, 178, 178, 1.0),
              offset: Offset(1.0, 4.0),
              blurRadius: 20.0,
            ),
          ],
          color: Colors.blueAccent,
          borderRadius: new BorderRadius.circular(32.0),
        ),
        child: new Center(
          child: new Text(
            'SIGN IN',
            style: new TextStyle(
                fontSize: 14.0, color: Colors.white, fontFamily: "Monserrat"),
          ),
        ),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            //Navigator.of(context).pushNamed(HomePage.tag);
          },
          color: Colors.lightBlueAccent,
          child: Text('Log In', style: TextStyle(color: Colors.white)),
        ),
      ),
    );

    final forgotLabel = SizedBox(
      width: 200.0,
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.blueAccent,fontFamily: "Monserrat",fontSize: 12.0,fontWeight: FontWeight.bold),
      ),
    );

    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 247, 247, 1.0),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 32.0, right: 32.0),
          children: <Widget>[
            logo,
            txtEmail,
            SizedBox(height: 4.0),
            email,
            SizedBox(height: 12.0),
            txtPassword,
            SizedBox(height: 4.0),
            password,
            SizedBox(height: 32.0),
            loginNew,
            forgotLabel
          ],
        ),
      ),
    );
  }
}
