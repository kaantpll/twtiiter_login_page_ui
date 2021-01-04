import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:twiiter/screen/create_account.dart';
import 'package:twiiter/screen/login_page.dart';
import 'package:twiiter/screen/login_page_contunie.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: HexColor("#1DA1F2")),
      routes: {
        '/': (context) => LoginPage(),
        '/loginPageText': (context) => LoginPageText(),
        '/createPage': (context) => CreateAccount(),
      },
      initialRoute: '/',
    );
  }
}
