import 'package:flutter/material.dart';
import 'package:mvvm_demo2/models/post_model.dart';

abstract class PostsRepository {
  Future<List<PostModel>> getAllPosts();

  Future<PostModel> getPostById(int id);
}
