import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/categories/mov.dart';
import 'package:shopping_app/categories/watch_later.dart';
import 'package:shopping_app/components/items.dart';
class later_page extends StatefulWidget {
  const later_page({super.key});

  @override
  State<later_page> createState() => _later_pageState();
}

class _later_pageState extends State<later_page> {
  @override
  Widget build(BuildContext context) {
    return  Consumer<Watch_later>(
      builder: (context, value, child)=> Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Container(
          decoration: BoxDecoration(
            border: Border.all(color: const Color.fromARGB(245, 35, 153, 237),width: 3),
            color: const Color.fromARGB(77, 16, 148, 229),
            borderRadius: BorderRadius.circular(10)),
            margin: const EdgeInsets.only(left: 10,top: 10),
            padding: const EdgeInsets.all(10),
           child: const Text('Saved Movies..',
            style: TextStyle(
              color: Color.fromARGB(255, 3, 25, 42),
              fontWeight: FontWeight.w500,
              fontSize: 25
              ),),
         ),
        
        const SizedBox(height: 10,),

        Expanded(child: ListView.builder(
          itemCount: value.getwaclat().length,
          itemBuilder: (context, index){
            Mov eachmovi = value.getwaclat()[index];
            return Item(movi: eachmovi,);
          }
          ),)
           
      ],
      ),
    );
  }
}