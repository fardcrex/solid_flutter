import 'package:charla_solid/src/domain/user/user_example.dart';
import 'package:flutter/material.dart';

class ProfilePageExample extends StatelessWidget {
  final UserExample user;
  const ProfilePageExample({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              'Nombre: [HERE]',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'Edad: [HERE]',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
