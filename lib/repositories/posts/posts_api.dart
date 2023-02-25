import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_demo2/models/post_model.dart';
import 'package:mvvm_demo2/repositories/posts/posts_repository.dart';

class PostsApi extends PostsRepository {
  @override
  Future<List<PostModel>> getAllPosts() async {
    List<PostModel> posts = [];
    try {
      var response =
          await Dio().get("https://jsonplaceholder.typicode.com/posts");

      var list = response.data as List;
      posts = list.map((tempPost) => PostModel.fromJson(tempPost)).toList();
    } catch (exception) {}
print(posts);
    return posts;
  }

  @override
  Future<PostModel> getPostById(int id) {
    // TODO: implement getPostById
    throw UnimplementedError();
  }
}
