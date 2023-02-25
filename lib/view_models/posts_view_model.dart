import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_demo2/models/post_model.dart';
import 'package:mvvm_demo2/repositories/posts/posts_repository.dart';
import 'package:mvvm_demo2/view_models/post_item_view_model.dart';

import '../repositories/posts/posts_api.dart';

// start from vid #9
class PostsViewModel {
  final String title = "All Posts";

  PostsRepository? postsRepository;

  PostsViewModel({this.postsRepository});

  Future<List<PostItemViewModel>?> fetchAllPosts() async {

    List<PostModel>? list = await postsRepository?.getAllPosts();

    return list?.map((p) => PostItemViewModel(post: p)).toList();
  }
}
