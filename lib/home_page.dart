import 'package:flutter/material.dart';
import 'package:test_project/Components/Constants.dart';
import 'package:test_project/Components/mediaquery.dart';
import 'package:test_project/news_bar.dart';
import 'package:test_project/product_widget.dart';
import 'package:test_project/stocks_page.dart';
import 'package:test_project/Database/db_tools.dart';
import 'package:test_project/Database/database_helper.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> ImgList = [
    StoreImage.Storeimg1,
    StoreImage.Storeimg2,
    StoreImage.Storeimg3,
    StoreImage.Storeimg4,
    StoreImage.Storeimg5,
    StoreImage.Storeimg6,
    StoreImage.Storeimg7,
    StoreImage.Storeimg8,
    StoreImage.Storeimg9,
    StoreImage.Storeimg10,
  ];

  List<Map<String, dynamic>> ItemList = [];
  Future<void> _refreshItemList()async{
    ItemList = await DBHelper.getItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 50,
            width: 400,
            color: Color.fromARGB(255, 107, 0, 218),
            child: Align(
              child: Text(
                'Parfumeria',
                style: TextStyle(
                  fontFamily: 'Dopestyle',
                  fontSize: 36,
                  color: Color.fromARGB(232, 252, 252, 252),
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ), // Parfume
          Container(
            height: 140,
            width: 400,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 107, 0, 218),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0)),
            ),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                ListTile(
                  title: Text(
                    'Элитная парфюмерия из германия, Австралия и Франции по ценам ниже чем в магазинах. Поможем подобрать тот самый аромат',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color.fromARGB(232, 252, 252, 252),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Оригинальная парфюмерия от ведущих мировых брендов'
                    'Магазин Perfume рад предложить Вам купить парфюмерию известных парфюмерных марок как в Минске, так и по всей Беларуси. Работаем на рынке Беларуси более 15 лет. Мы создали perfume-магазин для удобного поиска и быстрой покупки парфюмерии оперативно доставляем ваши заказы.'
                    'Нашего каталога представляет собой оригинальные товары ведущих мировых брендов от Armani до YSL.'
                    ' На perfume вы найдете тысячи различных наименований ароматов. Наши клиенты гарантированно получают оригинальный продукт от производителя, любого из представленных видов парфюмерии',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color.fromARGB(232, 252, 252, 252),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Опытные консультанты помогут вам с выбором подарка! В нашем каталоге парфюма вы можете найти и купить духи, последние новинки модных парфюмерных брендов, известную элитную классику от легендарных домов, таких как Chanel, Versace, JEAN PAUL GAULTIER, CHRISTIAN DIOR, GIORGIO ARMANI и другие. Нишевая парфюмерия представлена в широком ассортименте! У нас Вы сможете выбрать подарки родным и близким, коллеге, любимому мужчине и любимой женщине. На 8 Марта прекрасным подарком может стать женская туалетная вода! Наша команда поможет вам с выбором и даст консультацию по интересующей вас продукции. Также вы можете купить у нас распив парфюмерии в небольших объемах. Желаем приятных покупок и будем рады видеть вас снова',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color.fromARGB(232, 252, 252, 252),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ), // Matinlar
          DefaultTabController(
            length: 3,
            child: Column(
              children: [
                TabBar(
                  tabs: [
                    Tab(
                      child: Text(
                        'Магазин',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color.fromARGB(255, 107, 0, 218),
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Новости',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color.fromARGB(255, 107, 0, 218),
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Акции',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color.fromARGB(255, 107, 0, 218),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 365,
                  width: 400,
                  color: Colors.white,
                  child: TabBarView(
                    children: [
                      FutureBuilder(future: DBHelper.getItems(),
                        builder: (context, snapshot){
                        if(!snapshot.hasData){
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        } else{
                          List<Map<String, dynamic>> data = snapshot.data as List<Map<String, dynamic>>;
                          return GridView.builder(
                            gridDelegate:
                            SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 0.70,
                            ),
                            itemCount: data.length,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) => Container(
                              height: 365,
                              width: 400,
                              color: Color.fromARGB(232, 252, 252, 252),
                              child: Stack(
                                children: [
                                  Padding(padding: EdgeInsets.all(5),
                                    child: Container(
                                      height: 275,
                                      width: 180,
                                      child: Stack(
                                        children: [
                                          Padding(padding: EdgeInsets.all(5),
                                              child: Container(
                                                height: 170,
                                                width: 170,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: AssetImage(ImgList[index]),
                                                      fit: BoxFit.fill,
                                                    )
                                                ),
                                              )
                                          ),
                                          Padding(padding: EdgeInsets.fromLTRB(5, 180, 0, 0),
                                            child: Container(
                                                height: 90,
                                                width: 170,
                                                color: Color.fromARGB(255, 107, 0, 218),
                                                child: Stack(
                                                  children: [
                                                    Padding(padding: EdgeInsets.all(5),
                                                        child: SingleChildScrollView(
                                                          scrollDirection: Axis.horizontal,
                                                          child: Text(data[index]['productName'],
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                              fontWeight: FontWeight.bold,
                                                              color: Color.fromARGB(232, 252, 252, 252),
                                                            ),
                                                          ),
                                                        )
                                                    ),
                                                    Stack(
                                                      children: [
                                                        Padding(padding: EdgeInsets.fromLTRB(5, 20, 0, 0),
                                                          child: Text(data[index]['gram'],
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                              fontWeight: FontWeight.bold,
                                                              color: Color.fromARGB(232, 252, 252, 252),
                                                            ),
                                                          ),
                                                        ),
                                                        Row(
                                                          children: [
                                                            Padding(padding: EdgeInsets.fromLTRB(5, 35, 0, 0),
                                                              child: Text(data[index]['amount'],
                                                                style: TextStyle(
                                                                  fontSize: 15,
                                                                  fontWeight: FontWeight.bold,
                                                                  color: Color.fromARGB(232, 252, 252, 252),
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(padding: EdgeInsets.fromLTRB(10, 35, 0, 0),
                                                              child: Text(data[index]['discount'],
                                                                style: TextStyle(
                                                                  fontSize: 15,
                                                                  fontWeight: FontWeight.bold,
                                                                  color: Color.fromARGB(
                                                                      255, 248, 3, 3),
                                                                  decoration: TextDecoration.lineThrough,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Padding(padding: EdgeInsets.fromLTRB(130, 45, 0, 0),
                                                            child: IconButton(
                                                              icon: Icon(Icons.shopping_bag_outlined),
                                                              iconSize: 25,
                                                              color: Colors.white,
                                                              onPressed: (){},
                                                            )
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                )
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }
                        }
                        ),


                      ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 1,
                        itemBuilder: (context, int index) => NewBar(),
                      ),

                      ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 1,
                        itemBuilder: (context, int index) => StockPage(),
                      ),
                    ],
                  ),
                ),


              ],
            ),
          ),

        ],
      ),
    );
  }
}
