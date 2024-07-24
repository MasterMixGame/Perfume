import 'package:flutter/material.dart';
import 'package:test_project/Components/Constants.dart';

class AbercrombieFitch extends StatefulWidget {
  const AbercrombieFitch({super.key});

  @override
  State<AbercrombieFitch> createState() => _AbercrombieFitchState();
}

class _AbercrombieFitchState extends State<AbercrombieFitch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: ListTile(
              title: Text('ABERCROMBIE & FITCH',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 68, 68, 69),
                ),
              ),
            ),
          ),
          Container(
            height: 150,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: ListTile(
                title: Text('Abercrombie & Fitch-это знаменитый американский бренд, созданный в 1892 году Дэвидом Томасом Аберкромби в Нью Йорке. Компания выпускала элитную экипировку для любителей активного отдыха.'
                    'Имидж бренда компании активно продвигается как международная концепция стиля жизни, близкого к роскоши. Компания начала культивировать высококлассный имидж после открытия в 2005 году своего флагманского магазина на Пятой авеню рядом с Prada и другими высококлассными розничными магазинами.'
                    'В 2002 году компания впервые представила мужской аромат Fierce. Сегодня он является фирменным ароматом бренда Abercrombie & Fitch.',
                  style: TextStyle(
                    color: Color.fromARGB(255, 68, 68, 69),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 510,
            child: Column(
              children: [
                Container(
                  height: 300,
                  width: 300,
                  //color: Colors.grey,
                  child: Padding(padding: EdgeInsets.all(5),
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(AppImages.img14),
                            fit: BoxFit.cover,
                          )
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: ListTile(
                      title: Text('Authentic Man от Abercrombie & Fitch - это свежий фужерно-цитрусовый мужской аромат, предназначенный простоте, честности и независимости современного мужского стиля. Композиция Аберкромби & Фитч Мен раскрывается освежающими искрящимися цитрусовыми оттенками бергамота и грейпфрута с легким специево-пряной нотой розового перца. В сердце аромата нежно звучат утонченные элегантные цветочные нюансы душистой лаванды, пряного имбиря и благородного шалфея. Горячий бархатистый шлейф аромата окутывает нежными «анималистическими» оттенками замши и зелеными мшистыми нюансами влажного дубового мха.',
                        style: TextStyle(
                          color: Color.fromARGB(254, 68, 68, 69),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  child: ListTile(
                    title: Text('Abercrombie & Fitch (50 ml)',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    leading: ElevatedButton(
                      child: Text('Купить',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(254, 68, 68, 69),
                      ),
                      onPressed: (){},
                    ),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Container(
                  height: 2,
                  color: Color.fromARGB(254, 68, 68, 69).withOpacity(0.3),
                )

              ],
            ),
          ),
          Container(
            height: 510,
            child: Column(
              children: [
                Container(
                  height: 300,
                  width: 300,
                  //color: Colors.grey,
                  child: Padding(padding: EdgeInsets.all(5),
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(AppImages.img15),
                            fit: BoxFit.cover,
                          )
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: ListTile(
                      title: Text('Authentic Moment Man от Abercrombie & Fitch — это теплый и харизматичный древесно-пряный мужской аромат с восточным звучанием, чувственный и увлекательный. Композиция Аберкромби & Фитч Аутентик Момент Мэн вдохновлена тем особым моментом, когда между двумя людьми проскакивает искра и начинается магия чувств, когда все одновременно увлекательно, завораживающе и просто.',
                        style: TextStyle(
                          color: Color.fromARGB(254, 68, 68, 69),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  child: ListTile(
                    title: Text('Abercrombie & Fitch Authentic Man 100 (ml)',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    leading: ElevatedButton(
                      child: Text('Купить',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(254, 68, 68, 69),
                      ),
                      onPressed: (){},
                    ),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Container(
                  height: 2,
                  color: Color.fromARGB(254, 68, 68, 69).withOpacity(0.3),
                )
              ],
            ),
          ),
          Container(
            height: 510,
            child: Column(
              children: [
                Container(
                  height: 300,
                  width: 300,
                  //color: Colors.grey,
                  child: Padding(padding: EdgeInsets.all(5),
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(AppImages.img16),
                            fit: BoxFit.cover,
                          )
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: ListTile(
                      title: Text('Authentic Moment Woman от Abercrombie & Fitch - это свежий, женственный и невероятно притягательный цветочно-древесный аромат, для смелой и уверенной девушки. Композиция Аберкромби & Фитч Аутентик Вумен Момент в начале мягкая и спокойная постепенно становится экспрессивной, вызывая желание нарушать правила. Аромат покоряет своей харизмой и аутентичностью. Сочный мандарин и ревень плавно сливаются с шикарными цветочными аккордами в сердце аромата, а завершается композиция мягким бархатным древесно-мускусным шлейфом',
                        style: TextStyle(
                          color: Color.fromARGB(254, 68, 68, 69),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  child: ListTile(
                    title: Text('Abercrombie & Fitch Authentic Woman (50 ml)',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    leading: ElevatedButton(
                      child: Text('Купить',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(254, 68, 68, 69),
                      ),
                      onPressed: (){},
                    ),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Container(
                  height: 2,
                  color: Color.fromARGB(254, 68, 68, 69).withOpacity(0.3),
                )
              ],
            ),
          ),
          Container(
            height: 510,
            child: Column(
              children: [
                Container(
                  height: 300,
                  width: 300,
                  //color: Colors.grey,
                  child: Padding(padding: EdgeInsets.all(5),
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(AppImages.img17),
                            fit: BoxFit.cover,
                          )
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: ListTile(
                      title: Text('Authentic Night Man от Abercrombie & Fitch - это завораживающий и престижный восточно-фужерный аромат с красивым шлейфом для мужчин. Композиция Аберкромби & Фитч Аутентик Найт Мэн повествует нам историю напряжения и контраста. Туалетная вода создана для ярких представителей сильного пола, которые живут по своим правилам.',
                        style: TextStyle(
                          color: Color.fromARGB(254, 68, 68, 69),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  child: ListTile(
                    title: Text('Abercrombie & Fitch Authentic Night Men (100 мл)',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    leading: ElevatedButton(
                      child: Text('Купить',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(254, 68, 68, 69),
                      ),
                      onPressed: (){},
                    ),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Container(
                  height: 2,
                  color: Color.fromARGB(254, 68, 68, 69).withOpacity(0.3),
                )
              ],
            ),
          ),
          Container(
            height: 510,
            child: Column(
              children: [
                Container(
                  height: 300,
                  width: 300,
                  //color: Colors.grey,
                  child: Padding(padding: EdgeInsets.all(5),
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(AppImages.img18),
                            fit: BoxFit.cover,
                          )
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: ListTile(
                      title: Text('Authentic Night Woman от Abercrombie & Fitch - это чувственный и томный шипровый цветочный аромат для прекрасных леди. Композиция Аберкромби & Фитч Аутентик Найт Вуман поможет раскрыть ваши тайные желания в поисках своего истинного "Я". Парфюмерная вода создана для дерзких, решительных и современных  девушек, которые всегда ищут уникальные ценности.',
                        style: TextStyle(
                          color: Color.fromARGB(254, 68, 68, 69),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  child: ListTile(
                    title: Text('Abercrombie & Fitch Authentic Night Woman (100 мл)',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    leading: ElevatedButton(
                      child: Text('Купить',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(254, 68, 68, 69),
                      ),
                      onPressed: (){},
                    ),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Container(
                  height: 2,
                  color: Color.fromARGB(254, 68, 68, 69).withOpacity(0.3),
                )
              ],
            ),
          ),
          Container(
            height: 510,
            child: Column(
              children: [
                Container(
                  height: 300,
                  width: 300,
                  //color: Colors.grey,
                  child: Padding(padding: EdgeInsets.all(5),
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(AppImages.img19),
                            fit: BoxFit.cover,
                          )
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: ListTile(
                      title: Text('Authentic Self Woman от Abercrombie & Fitch — это освежающий и бодрящий цветочный древесно-мускусный аромат для женщин. Композиция Аберкромби & Фитч Селф Вуман обладает живым и вдохновляющим звучанием. Парфюмерная вода подчеркнёт уникальность и самобытность своей обладательницы, придав уверенности для самовыражения.',
                        style: TextStyle(
                          color: Color.fromARGB(254, 68, 68, 69),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  child: ListTile(
                    title: Text('Abercrombie & Fitch Authentic Self Woman (100 мл)',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    leading: ElevatedButton(
                      child: Text('Купить',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(254, 68, 68, 69),
                      ),
                      onPressed: (){},
                    ),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Container(
                  height: 2,
                  color: Color.fromARGB(254, 68, 68, 69).withOpacity(0.3),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
