import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: _main(context),
    );
  }

  Center _main(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Text(
              "Şu anda dünyada olup bitenleri gör.",
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: ButtonTheme(
                minWidth: 250,
                child: RaisedButton(
                  color: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  child: Text(
                    "Hesap Oluştur",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/createPage");
                  },
                ),
              ),
            ),
            SizedBox(
              height: 160,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Zaten bir hesabın var mı?"),
                FlatButton(
                  child: Text(
                    "Giriş Yap",
                    style: TextStyle(color: HexColor("#1DA1F2")),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/loginPageText');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  AppBar _appbar() {
    return AppBar(
      title: Image.asset(
        "assets/image/twitter.png",
        width: 30,
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
    );
  }
}
