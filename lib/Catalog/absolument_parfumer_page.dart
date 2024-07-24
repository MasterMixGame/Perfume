import 'package:flutter/material.dart';
import 'package:test_project/Components/Constants.dart';

class AbsolumentParfumer extends StatefulWidget {
  const AbsolumentParfumer({super.key});

  @override
  State<AbsolumentParfumer> createState() => _AbsolumentParfumerState();
}

class _AbsolumentParfumerState extends State<AbsolumentParfumer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: ListTile(
              title: Text('ABSOLUMENT PARFUMEUR',
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
                title: Text('Absolument Parfumeur - французский бренд нишевой парфюмерии. Композиции бренда отличаются притягательностью, яркостью, глубиной и неповторимостью.'
                    'Бренд создан в 2006 году Паскалем Роланом из Прованса, занимающимся производством алкогольной продукции. Он проложил себе дорогу в мир парфюмерии, выпустив аромат, воплощающий в себе душистый и такой любимый создателем абсент. Более 80-ти лет ароматный напиток был запрещён во Франции. Бренд является совершенно новым веянием в парфюмерном искусстве. К парфюмерам, которые сотрудничали с компанией, относятся Maurizio Cerizza, Marc Villaceque и Pascal Rolland.',
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
                            image: AssetImage(AppImages.img20),
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
                      title: Text('Absolument Femme от Absolument Parfumeur — это деликатный и страстный цветочный аромат с чувственным звучанием для женщин. Композиция Абсолюмент Парфюмер Абсолюмент Фем отражает тонкую гармонию и великолепный баланс между цветочными нотами и абсентом. Парфюмерная вода создана для романтических натур, которые могут одновременно быть хрупкими и сильными, нежными и смелыми.',
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
                    title: Text('Absolument Parfumeur Absolument Femme(100 мл)',
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
                            image: AssetImage(AppImages.img21),
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
                      title: Text('Absolument Homme от Absolument Parfumeur — это строгий и элегантный древесно-пряный аромат с благородным звучанием для мужчин. Композиция Абсолюмент Парфюмер Абсолюмент Хом создана для основательных и серьёзных представителей сильного пола, которым по вкусу смесь современности и классики. Парфюмерная вода подчеркнёт статус и безупречный вкус.',
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
                    title: Text('Absolument Parfumeur Absolument Homme (100 мл)',
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
                            image: AssetImage(AppImages.img22),
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
                      title: Text('Aqua Di Aix от Absolument Parfumeur — это романтичный и обольстительный фужерно-пряный аромат для женщин. Композиция Абсолюмент Парфюмер Аква Ди Экс посвящена индивидуальности жены парфюмера и всем француженкам. Парфюмерная вода подчеркнёт уникальность своей обладательницы, её женственность и привлекательность, завораживая своим нежным звучанием.',
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
                    title: Text('Absolument Parfumeur Aqua Di Aix (100 мл)',
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
    );;
  }
}
