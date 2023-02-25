import 'package:flutter/material.dart';
import 'package:mvvm_demo2/models/post_model.dart';

class PostItemViewModel {
  PostModel? post;

  PostItemViewModel({this.post});

  get id => post?.id;

  get userId => post?.userId;

  get title => post?.title?.toUpperCase();

  get body => post?.body;
}
