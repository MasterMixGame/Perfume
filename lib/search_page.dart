import 'package:flutter/material.dart';
import 'package:test_project/Catalog/abercrombie.dart';
import 'package:test_project/Catalog/absolument_parfumer_page.dart';
import 'package:test_project/Database/db_tools.dart';
import 'package:test_project/stocks_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(padding: EdgeInsets.all(5),
            child: ListTile(
              title: Text('Каталог парфюмерии',
                style: TextStyle(
                  color: Color.fromARGB(255, 107, 0, 218),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
        ),
        Padding(padding: EdgeInsets.all(5),
        child: Container(
          height: 60,
          width: 260,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 107, 0, 218),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Stack(
            children: [
              ListTile(
                title: Text('ABERCROMBIE FITCH',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> AbercrombieFitch()));
                },
              )
            ],
          ),
        ),
        ),
        Padding(padding: EdgeInsets.all(5),
          child: Container(
            height: 60,
            width: 260,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 107, 0, 218),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Stack(
              children: [
                ListTile(
                  title: Text('ABSOLUMENT PARFUMER',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> AbsolumentParfumer()));
                  },
                )
              ],
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(5),
          child: Container(
            height: 60,
            width: 260,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 107, 0, 218),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Stack(
              children: [
                ListTile(
                  title: Text('ACCENDIS',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> StockPage()));
                  },
                )
              ],
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(5),
          child: Container(
            height: 60,
            width: 260,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 107, 0, 218),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Stack(
              children: [
                ListTile(
                  title: Text('ACQUA DE SARDEGNA',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> StockPage()));
                  },
                )
              ],
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(5),
          child: Container(
            height: 60,
            width: 260,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 107, 0, 218),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Stack(
              children: [
                ListTile(
                  title: Text('ACQUA DI BIELLA',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> StockPage()));
                  },
                )
              ],
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(5),
          child: Container(
            height: 60,
            width: 260,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 107, 0, 218),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Stack(
              children: [
                ListTile(
                  title: Text('ACQUA DE SARDEGNA',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> StockPage()));
                  },
                )
              ],
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(5),
          child: Container(
            height: 60,
            width: 260,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 107, 0, 218),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Stack(
              children: [
                ListTile(
                  title: Text('ACQUA DI MONACO',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> StockPage()));
                  },
                )
              ],
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(5),
          child: Container(
            height: 60,
            width: 260,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 107, 0, 218),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Stack(
              children: [
                ListTile(
                  title: Text('ACQUA DI PARMA',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> StockPage()));
                  },
                )
              ],
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(5),
          child: Container(
            height: 60,
            width: 260,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 107, 0, 218),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Stack(
              children: [
                ListTile(
                  title: Text('ADIDAS',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> StockPage()));
                  },
                )
              ],
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(5),
          child: Container(
            height: 60,
            width: 260,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 107, 0, 218),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Stack(
              children: [
                ListTile(
                  title: Text('ADOLFO DOMINGUEZ',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> StockPage()));
                  },
                )
              ],
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(5),
          child: Container(
            height: 60,
            width: 260,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 107, 0, 218),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Stack(
              children: [
                ListTile(
                  title: Text('ADRIANO DOMIANNI',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> StockPage()));
                  },
                )
              ],
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(5),
          child: Container(
            height: 60,
            width: 260,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 107, 0, 218),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Stack(
              children: [
                ListTile(
                  title: Text('AFFINESSENCE',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> StockPage()));
                  },
                )
              ],
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(5),
          child: Container(
            height: 60,
            width: 260,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 107, 0, 218),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Stack(
              children: [
                ListTile(
                  title: Text('AFNAN',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> StockPage()));
                  },
                )
              ],
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(5),
          child: Container(
            height: 60,
            width: 260,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 107, 0, 218),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Stack(
              children: [
                ListTile(
                  title: Text('AGATHA',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> StockPage()));
                  },
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
