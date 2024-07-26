import 'package:flutter/material.dart';
import 'package:test_project/Catalog/abercrombie.dart';
import 'package:test_project/Catalog/absolument_parfumer_page.dart';
import 'package:test_project/Components/mediaquery.dart';
import 'package:test_project/Database/db_tools.dart';
import 'package:test_project/account_page.dart';
import 'package:test_project/home_page.dart';
import 'package:test_project/search_page.dart';
import 'package:test_project/shopping_page.dart';
import 'package:test_project/splash_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  List BottomNavWidget = [
    HomePage(),
    SearchPage(),
    TodoScreen(),
    AccountPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 107, 0, 218),
        actions: [
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 6),
              height: 40,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                  color: Color.fromARGB(232, 252, 252, 252),
              ),
              child: Stack(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 50,
                        color: Color.fromARGB(255, 81, 3, 168),
                        child: Stack(
                          children: [
                            IconButton(
                              icon: Icon(Icons.search),
                              color: Color.fromARGB(232, 252, 252, 252),
                              iconSize: 25,
                              onPressed: (){},
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 45,
                        width: 320,
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Поиск',
                                    border: InputBorder.none,
                                  ),
                                )
                            )
                          ],
                        ),
                      )
                    ],
                  )

                ],
              ),
            ),
          )
        ],
      ),
      body: Center(
      child: BottomNavWidget[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Магазин'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Каталог'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: 'Товаров'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Кабинет'),
        ],
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
    );
  }
}
