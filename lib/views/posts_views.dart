import 'package:flutter/material.dart';
import 'package:mvvm_demo2/repositories/posts/posts_api.dart';

import '../view_models/post_item_view_model.dart';
import '../view_models/posts_view_model.dart';

class PostsView extends StatelessWidget {
  PostsView({Key? key}) : super(key: key);

  var postsViewModel = PostsViewModel(postsRepository: PostsApi());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(postsViewModel.title),
      ),
      body: Center(
        child: FutureBuilder(
          future: postsViewModel.fetchAllPosts(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else {
              var posts = snapshot.data as List<PostItemViewModel>;
              return ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(posts[index].title),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
