import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/categories/mov.dart';
import 'package:shopping_app/categories/watch_later.dart';

class Item extends StatefulWidget {
  Mov movi;
   Item({super.key,required this.movi});

  @override
  State<Item> createState() => _ItemState();
} 

class _ItemState extends State<Item> {
  void removewaclat(){
    Provider.of<Watch_later>(context, listen: false).removewaclat(widget.movi);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 125, 203, 244),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.only(bottom: 10,left: 10,right: 10),
      child: ListTile(
        leading: ClipRRect(
              borderRadius: BorderRadius.circular(7),
              child:Image.asset(widget.movi.img),),
        title: Text(widget.movi.name),
        subtitle: Text(widget.movi.description),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: removewaclat,
        ),
      ),
    );
  }
}