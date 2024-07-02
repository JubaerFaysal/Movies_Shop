import 'package:flutter/material.dart';
import 'package:shopping_app/components/bottombar.dart';
import 'package:shopping_app/pages/later.dart';
import 'package:shopping_app/pages/watch.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _index=0;
  void navigateBottomBar(int index){
    setState(() {
      _index=index;
    });
  }
  final List<Widget> _pages = [
    const watch_page(),
    const later_page(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 193, 230, 247),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 50, 178, 247),
        leading: Builder(
          builder: (context) {
            return IconButton(icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            });
          }
        ),
      ),
      drawer:  Drawer(
        backgroundColor: const Color.fromARGB(255, 80, 186, 243),
        child: Column(
          children: [
            const DrawerHeader(
              child: Icon(Icons.movie_filter,size: 70,color: Color.fromARGB(255, 247, 234, 92),)),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 25),
            //   child: Divider(color: Colors.white,),
            // ),
             Container(
              margin: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 70, 247, 241),
              ),
               child: const ListTile(
                  leading: Icon(Icons.home,color: Color.fromARGB(255, 0, 0, 0),size: 25,),
                  title: Text('Home',style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontSize: 20),),
                  subtitle: Text("This is your home"),
                ),
             ),
            
             Container(
              margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 70, 247, 241),
            ),
               child: const ListTile(
                  leading: Icon(Icons.info,color: Color.fromARGB(255, 0, 0, 0),size: 25,),
                  title: Text('About',style: TextStyle(color: Color.fromARGB(255, 3, 1, 1),fontSize: 20),),
                  subtitle: Text('About our apps'),
                ),
             ),
            
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 70, 247, 241),
            ),
              child: const ListTile(
                leading: Icon(
                  Icons.logout,
                  color:  Color.fromARGB(255, 0, 0, 0),
                  size: 25,
                ),
                title: Text(
                  'Log Out',
                  style: TextStyle(color: Color.fromARGB(255, 1, 1, 3), fontSize: 20),
                ),
                subtitle: Text('log out my account'),
              ),
            ),
          
          ]
          ),
      ),
      bottomNavigationBar: Mybottom(
        onTabChange: (index)=> navigateBottomBar(index),
      ),
      body: _pages[_index],
    );
  }
}