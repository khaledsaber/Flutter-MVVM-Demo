import 'package:flutter/material.dart';
import 'package:mvvm_demo2/models/post_model.dart';
import 'package:mvvm_demo2/repositories/posts/posts_repository.dart';

class PostsLocal extends PostsRepository{
  @override
  Future<List<PostModel>> getAllPosts() {
    // TODO: implement getAllPosts
    throw UnimplementedError();
  }

  @override
  Future<PostModel> getPostById(int id) {
    // TODO: implement getPostById
    throw UnimplementedError();
  }
  
}