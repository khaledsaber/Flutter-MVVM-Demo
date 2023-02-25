import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mvvm_demo2/views/posts_views.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: PostsView(),
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  static const channel = MethodChannel("myNativeChannel");
  
  playMusic()async{
  try {
    await channel.invokeMethod('playMusic');
  }on PlatformException catch(E){
   print(E.message);
  }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyDemoApp"),
      ),
      body: Center(child:ElevatedButton(child: Text("play"),onPressed: playMusic,),),
    );
  }
}
