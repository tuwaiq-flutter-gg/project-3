// ignore_for_file: file_names

import 'package:image_picker/image_picker.dart';
import 'package:project_3/Data/Post.dart';

class User {
  XFile? profilePicture;
  String userName;
  String password;
  String title;
  String description;
  String message;
  int followers = 0;
  List<int> followingIndexes = [];
  List<Post> posts = [];

  User({
    required this.userName,
    required this.password,
    this.title = "",
    this.description = "",
    this.message = "",
    this.profilePicture,
  });
}
