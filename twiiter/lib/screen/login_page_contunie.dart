import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class LoginPageText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              "Twitter'a giriş yap.",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 32),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Form(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Telefon,e-posta ya da kullanacı adı",
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Şifre",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            RaisedButton(
              child: Text(
                "Giriş Yap",
                style: TextStyle(color: Colors.white),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              color: Theme.of(context).primaryColor,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Theme.of(context).primaryColor,
        ),
        onPressed: () {
          Navigator.pushNamed(context, "/");
        },
      ),
      actions: <Widget>[
        Image.asset("assets/image/twitter.png", width: 30),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: FlatButton(
            child: Text(
              "Kaydol",
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            onPressed: () {},
          ),
        ),
        IconButton(
          icon: Icon(
            Icons.more_vert_sharp,
            size: 34,
            color: Theme.of(context).primaryColor,
          ),
          onPressed: () async {
            //  UserCredential user = (await FirebaseAuth.instance.signInWithEmailAndPassword(email: , password: password))
          },
        ),
      ],
    );
  }
}
