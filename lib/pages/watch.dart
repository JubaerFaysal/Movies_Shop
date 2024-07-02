import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/categories/mov.dart';
import 'package:shopping_app/categories/watch_later.dart';
import 'package:shopping_app/components/movie.dart';
class watch_page extends StatefulWidget {
  const watch_page({super.key});

  @override
  State<watch_page> createState() => _watch_pageState();
}

class _watch_pageState extends State<watch_page> {
  void addmovitolater(Mov movi){
       Provider.of<Watch_later>(context,listen: false).addwaclat(movi);

        showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text('successfully added!',style: TextStyle(color: Color.fromARGB(255, 45, 145, 246)),),
        content: Text('check watch later folder..'),
      ),
    );
}

  @override
  Widget build(BuildContext context) {
    return Consumer<Watch_later>(
      builder: (context, value, child)=>Column(
      children: [ 
          
           Container(
              margin: const EdgeInsets.symmetric(vertical: 12,horizontal: 10),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(color: const Color.fromARGB(255, 99, 188, 239),borderRadius: BorderRadius.circular(10)),
             child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text('Search',style: TextStyle(color: Colors.black,fontSize: 16),),
                 Icon(Icons.search,color: Colors.black,size: 23,),
               ],
             ),
            ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('All your favourite is here!',style: TextStyle(color: Colors.black45,fontSize: 16)),
        ),
          
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Master Piece🔥',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
              Text('See all',style: TextStyle(fontWeight: FontWeight.w800,color: Colors.lightBlue),),
            ],       
          ),
        ),
        const SizedBox(height: 10,),
        //list of movies
        Expanded(
          child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index){
              Mov movi = value.getmovielist()[index];
             return Movies(
              movi: movi,
              onTap: () =>  addmovitolater(movi),
             );
             }
          )
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10,bottom: 25),
          child: Text('Enjoy your free time with FQ',style: TextStyle(color: Color.fromARGB(255, 131, 125, 125)),),
        ),
      ],
    )
  );
  }
}