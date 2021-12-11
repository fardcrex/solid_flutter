import 'package:flutter/material.dart';

class ProfilePageBait extends StatelessWidget {
  const ProfilePageBait({Key? key}) : super(key: key);

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
