import 'package:celestial_atheneum/core/constants/app_constants.dart';
import 'package:celestial_atheneum/provider_setup.dart';
import 'package:celestial_atheneum/ui/router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        title: 'Atheneum',
        theme: ThemeData(
          primarySwatch: Colors.brown,
        ),
        initialRoute: RoutePaths.Home,
        onGenerateRoute: Router.generateRoute,
      ),
    );
  }
}
