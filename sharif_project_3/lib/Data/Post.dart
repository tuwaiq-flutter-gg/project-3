// ignore_for_file: file_names

import 'package:image_picker/image_picker.dart';
import 'package:project_3/Data/Comments.dart';

class Post {
  final XFile image;
  final String title;
  String description;
  List<Comment> comments = [];

  Post({required this.image,required this.title, this.description = ""});
}
