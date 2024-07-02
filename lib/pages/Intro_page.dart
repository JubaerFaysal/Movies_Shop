// ignore: file_names
import 'package:flutter/material.dart';
import 'package:shopping_app/pages/homepage.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 127, 206, 245),
      body:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('FQ'+'\'s',style: 
              TextStyle(fontWeight: FontWeight.w500,
              fontSize: 25,
              color: Color.fromARGB(255, 36, 28, 58)),),
              Padding(
                padding: const EdgeInsets.only(bottom: 30,top: 5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: Image.asset('lib/images/Bard_Generated_Image-4.png',
                  height: 300,
                  //width: 200,
                  ),
                ),
              ),
              //const SizedBox(height: 10),
              const Text('Movies',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              fontSize: 20,
             // fontStyle: FontStyle.normal,
             ),
              textAlign: TextAlign.center,
              ),
            //const SizedBox(height: 15),
              const Text('All new Arival Available',
              style: TextStyle(
                fontWeight: FontWeight.normal,
              fontSize: 15,
              color: Color.fromARGB(255, 71, 49, 49)
              ),
              textAlign: TextAlign.center,
              ),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const Homepage(), )),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 40, 167, 236),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Center(
                    child: Text('Watch Now',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 11, 3, 0)
                    ),
                    ),
                  ),
                ),
              ),
            )

            ],
          ),
        ),
      
    );
  }
}