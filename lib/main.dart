import 'package:flutter/material.dart';
import 'package:rat/main.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'ShoppingList',
      theme: ThemeData(primarySwatch: Colors.red) ,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Liste courses"),),
      body: Column(
        children: [ Progess(),],
      ),
    );
  }
}
class Progess extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      children: [ Text('vous avancez dans vos courses :'), LinearProgressIndicator(value: 0.0),],
    );
  }
}