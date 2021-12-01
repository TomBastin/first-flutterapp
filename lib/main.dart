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
        children: [
          Progess(),
          ShoppingList(),
        ],
      ),
    );
  }
}
class Progess extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      children: [ Text('vous avancez dans vos courses :'), CircularProgressIndicator(value: 0.2, backgroundColor: Colors.grey),],
    );
  }
}

class ShoppingList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Item(label:"beurre"),
        Item(label:"jambon"),
        Item(label:"fromage"),
        Item(label:"lait"),
        Item(label:"Kellogg's"),
      ],
    );
  }
}

class Item extends StatefulWidget{
  final String label;

  const Item({Key? key, required this.label}) : super(key: key);

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  bool?_value=false;
  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        Checkbox(
        value: _value,
        onChanged: (newValue)=> setState(()=>_value = newValue)
    ),
        Text(widget.label),
      ],
    );

  }
}