import 'package:charla_solid/src/domain/posts/post_final.dart';
import 'package:charla_solid/src/domain/user/user_final.dart';
import 'package:flutter/material.dart';

class ProfilePageFinal extends StatelessWidget {
  final UserFinal user;
  const ProfilePageFinal({Key? key, required this.user, this.myPost = const Post.any()}) : super(key: key);

  final Post myPost;

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
            ElevatedButton(
              onPressed: () {},
              child: const Text('Actualizar Publicacion'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Eliminar Publicacion'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Crear Publicacion'),
            ),
          ],
        ),
      ),
    );
  }
}
