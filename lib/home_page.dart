import 'package:flutter/material.dart';
import 'package:test_project/Components/Constants.dart';
import 'package:test_project/Components/mediaquery.dart';
import 'package:test_project/news_bar.dart';
import 'package:test_project/product_widget.dart';
import 'package:test_project/stocks_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 50,
            width: 400,
            color: Color.fromARGB(233, 51, 51, 51),
            child: Align(
              child: Text(
                'Parfumeria',
                style: TextStyle(
                  fontFamily: 'Dopestyle',
                  fontSize: 36,
                  color: Color.fromARGB(255, 253, 191, 8),
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ), // Parfume
          Container(
            height: 140,
            width: 400,
            decoration: BoxDecoration(
              color: Color.fromARGB(233, 51, 51, 51),
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
                      color: Color.fromARGB(232, 253, 227, 148),
                      fontSize: 18,
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
                      color: Color.fromARGB(233, 253, 227, 148),
                      fontSize: 18,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Опытные консультанты помогут вам с выбором подарка! В нашем каталоге парфюма вы можете найти и купить духи, последние новинки модных парфюмерных брендов, известную элитную классику от легендарных домов, таких как Chanel, Versace, JEAN PAUL GAULTIER, CHRISTIAN DIOR, GIORGIO ARMANI и другие. Нишевая парфюмерия представлена в широком ассортименте! У нас Вы сможете выбрать подарки родным и близким, коллеге, любимому мужчине и любимой женщине. На 8 Марта прекрасным подарком может стать женская туалетная вода! Наша команда поможет вам с выбором и даст консультацию по интересующей вас продукции. Также вы можете купить у нас распив парфюмерии в небольших объемах. Желаем приятных покупок и будем рады видеть вас снова',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color.fromARGB(233, 253, 227, 148),
                      fontSize: 18,
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
                          color: Color.fromARGB(255, 68, 68, 69),
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Новости',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color.fromARGB(255, 68, 68, 69),
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Акции',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color.fromARGB(255, 68, 68, 69),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                    height: 365,
                    width: 400,
                    color: Color.fromARGB(255, 253, 253, 254),
                    child: TabBarView(
                      children: [
                          GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.75,
                          ),
                          itemBuilder: (context, index) => ProductWidget(),
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
                    )),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
