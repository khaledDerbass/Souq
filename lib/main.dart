import 'package:flutter/material.dart';

import 'myCountry.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(

      debugShowCheckedModeBanner: false,
      initialRoute: 'wlc_country',
      title: 'Trainee Guide',
      routes: {
        'wlc_country': (context) => myCountry(),
        //'register': (context) => myRegister(),
        //'forgot': (context) => resetPassword(),

      }));


}