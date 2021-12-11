import 'package:charla_solid/src/infraestructure/sql_repository.dart';

class Post {
  final String title;
  final String author;
  final String description;

  const Post(this.title, this.author, this.description);
  const Post.any()
      : title = 'Hola mundo',
        author = 'Jair',
        description = 'Lorem ipsum';

  Future<void> updateOnBD() async {
    final repository = SQLiteRepository();
    repository.updatePost(this);
  }

  Future<void> deleteOnBD() async {
    final repository = SQLiteRepository();
    repository.deletePost(this);
  }

  Future<void> createPostOnBD() async {
    final repository = SQLiteRepository();
    repository.createPost(this);
  }
}
