import 'package:flutter/material.dart';
import 'package:shopping_app/categories/mov.dart';

class Watch_later extends ChangeNotifier{
  List<Mov>movielist=[
  Mov(
    name: 'Love Birds', 
    price: '32', 
    img: 'lib/images/Gemini_Generated_Image_arnj5narnj5narnj.png', 
    description: 'Loves in the Air!'
    ),
      Mov(
      name: 'The Dolphins',
      price: '22',
      img: 'lib/images/Gemini_Generated_Image-5.png',
      description: 'Make your day with dholphin',
    ),
      Mov(
      name: 'zombie Shark',
      price: '46',
      img: 'lib/images/Bard_Generated_Image-4.png',
      description: 'Horror!,Dead Sea!,Monster!',
    ),
    Mov(
      name: 'Sunrise',
      price: '29',
      img: 'lib/images/Gemini_Generated_Image_arnj5oarnj5oarnj.png',
      description: 'Make your heart refresh with bloody beuty',
    ),
   Mov(
    name: 'Lost in Nature', 
   price: '36', 
   img: 'lib/images/Gemini_Generated_Image_arnj5marnj5marnj.png', 
   description: 'The beauty of nature will separate you from civilization!',
   ),
  ];
  List<Mov>waclat=[];

  List<Mov>getmovielist(){
    return movielist;
  }
  List<Mov>getwaclat(){
    return waclat;
  }
  void addwaclat(Mov movi){
    waclat.add(movi);
    notifyListeners();
  }
  void removewaclat(Mov movi) {
    waclat.remove(movi);
    notifyListeners();
  }
}