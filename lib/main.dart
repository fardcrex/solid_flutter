import 'package:charla_solid/src/domain/user/user_example.dart';
import 'package:charla_solid/views/example/home/perfil_page.dart';
import 'package:charla_solid/views/example/home/perfil_page_final.dart';
import 'package:flutter/material.dart';

import 'src/domain/posts/post_final.dart';
import 'src/domain/user/user_final.dart';
import 'src/domain/user/value_objects.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      routes: {
        Routes.profileExample: (_) => ProfilePageExample(user: fromServer()),
        Routes.profileFinal: (_) => ProfilePageFinal(user: UserFinal.fromServer()),
      },
      home: const HomeButtom(),
    );
  }
}

class Routes {
  static const profileExample = 'profile-example';
  static const profileFinal = 'profileFinal';
}

class HomeButtom extends StatelessWidget {
  const HomeButtom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, Routes.profileExample),
              child: const Text('Profile Example'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, Routes.profileFinal),
              child: const Text('Profile Final'),
            ),
          ],
        ),
      ),
    );
  }
}

UserExample fromServer() {
  return UserExample(
    '3123-123-1231-2312',
    Name('Robot001 G4ll¡to d3 las Roc@s'),
    Edad(-22),
  );
}
