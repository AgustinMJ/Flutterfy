import 'package:flutter/material.dart';
import 'package:spotify_clone/routes/router.dart';
import 'package:provider/provider.dart';
import 'package:spotify_clone/state/auth.dart';
import 'defaults/constants.dart';

void main() {
  runApp(
      ChangeNotifierProvider(create: (context) => AuthState(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: AppBarTheme(brightness: Brightness.dark),
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.green,
          scaffoldBackgroundColor: Constants.black,
          textTheme: TextTheme(
            bodyText1: TextStyle(color: Constants.white),
            bodyText2: TextStyle(color: Constants.white),
          )),
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: '/',
    );
  }
}
