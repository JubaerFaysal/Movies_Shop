import 'package:flutter/material.dart';
import 'package:shopping_app/categories/mov.dart';

class Movies extends StatelessWidget {
  Mov movi;
  void Function()?onTap;
  Movies({super.key, required this.movi, required this.onTap});  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      //height: 200,  
      width: 280,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 105, 195, 247),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(movi.img)),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 5),
              child: Text(
                movi.description,
                style: const TextStyle(
                    color: Color.fromARGB(255, 61, 9, 9),
                    fontWeight: FontWeight.w200,
                    fontSize: 17),
              ),
            ),
          ),
         // const SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  movi.name,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
                Text(
                 '\$${movi.price}',
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5,),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,),
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 72, 239, 223),
                  borderRadius: BorderRadius.circular(12)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Play Now',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w400,
                        fontSize: 15),
                  ),
                  Icon(
                    Icons.play_circle_filled,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 7),
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(color: const Color.fromARGB(255, 130, 233, 236),borderRadius: BorderRadius.circular(12)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Watch later',
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    ),
                    Icon(Icons.watch_later_sharp,),
                  ],
                ),
                ),
            ),
          ),
        ],
      ),
    );
  }
}
