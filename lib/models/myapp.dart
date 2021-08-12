import 'package:flutter/material.dart';
import 'package:mywork/models/homepage.dart';
import 'package:mywork/models/profile.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: LoginPageOrange(),
      onGenerateRoute: (settings) {
        print(settings);
        List<String> link = settings.name.toString().split("/");
        print(link);
        if (link[1] == 'profile') {
          return MaterialPageRoute(
            settings: RouteSettings(name:settings.name.toString() ),
            builder: (context) {
            return Profile(int.parse(link[2]));
          });
        }
      },
    );
  }
}
