import 'package:flutter/material.dart';
import 'package:test_project/Components/Constants.dart';

class NewBar extends StatefulWidget {
  const NewBar({super.key});

  @override
  State<NewBar> createState() => _NewBarState();
}

class _NewBarState extends State<NewBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          ListTile(
            title: Text('Новости парфюмерии',
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            title: Text('Парфюмерные новинки 2024 для яркого, неповторимого образа',
              style: TextStyle(
                color: Color.fromARGB(255, 56, 56, 56),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.grade),
            iconColor: Colors.grey.withOpacity(0.4),
            title: Text('Дорогие друзья, специально для Вас, мы регулярно пополняем ассортимент нашего магазина самыми модными парфюмерными композициями. В нашем магазине вы сможете подобрать парфюмерию как для ежедневного использования, так и для особых случаев. Ведь именно правильно подобранный парфюм, позволит Вам выглядеть превосходно в любой ситуации не упустите возможность вдохновиться парфюмерной магией – приходите к нам и окунитесь в ароматный рай а мы поможем Вам подобрать тот самый особенный аромат',
              style: TextStyle(
                color: Color.fromARGB(255, 56, 56, 56),
                fontSize: 17,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.grade),
            iconColor: Colors.grey.withOpacity(0.4),
            title: Text('Marc-Antoine Barrois Tilia - яркая цветочно-древесно-мускусная композиция для мужчин и женщин. Этот сияющий и солнечный аромат создает ощущение праздника и погружает вас в бесконечное лето',
              style: TextStyle(
                color: Color.fromARGB(255, 56, 56, 56),
                fontSize: 17,
              ),
            ),
          ),
          Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImages.img7),
                    fit: BoxFit.cover,
                  )
              )
          ),
          ListTile(
            leading: Icon(Icons.grade),
            iconColor: Colors.grey.withOpacity(0.4),
            title: Text('Gritti Super Nova - стильный, интригующий, экстравагантный аромат с пряными и минеральными нотам. Композиция прийдется по вкусу любителям необычных и провокационных ароматов.',
              style: TextStyle(
                color: Color.fromARGB(255, 56, 56, 56),
                fontSize: 17,
              ),
            ),
          ),
          Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImages.img9),
                    fit: BoxFit.cover,
                  )
              )
          ),
          ListTile(
            leading: Icon(Icons.grade),
            iconColor: Colors.grey.withOpacity(0.4),
            title: Text('Givenchy Irresistible Very Floral - нежнейший  аромат с магическим цветочным шлейфом. Композиция великолепно дополнит образ утонченной, романтичной леди.',
              style: TextStyle(
                color: Color.fromARGB(255, 56, 56, 56),
                fontSize: 17,
              ),
            ),
          ),
          Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImages.img8),
                    fit: BoxFit.cover,
                  )
              )
          ),
          ListTile(
            title: Text('Распив парфюмерии',
              style: TextStyle(
                color: Color.fromARGB(255, 56, 56, 56),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.grade),
            iconColor: Colors.grey.withOpacity(0.4),
            title: Text('Мы запускаем распив парфюмерии в Минске очень часто Вы хотите купить маленький объем туалетной воды, парфюмерной воды, одеколона и мы решили Вас порадовать теперь вы можете найти и купить распив парфюмерии у нас на сайте со словом travel. К заказу доступны объемы 3, 5, 8, 10, 15 мл',
              style: TextStyle(
                color: Color.fromARGB(255, 56, 56, 56),
                fontSize: 17,
              ),
            ),
          ),
          Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImages.img10),
                    fit: BoxFit.cover,
                  )
              )
          ),
          ListTile(
            title: Text('Самые топовые новинки нашего распива',
              style: TextStyle(
                color: Color.fromARGB(255, 56, 56, 56),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.grade),
            iconColor: Colors.grey.withOpacity(0.4),
            title: Text('Дорогие друзья, специально для Вас, мы регулярно пополняем ассортимент ароматов в распиве самыми топовыми и модными парфюмерными композициями. В нашем магазине вы сможете подобрать парфюмерию как для ежедневного использования, так и для особых случаев. Ведь именно правильно подобранный парфюм, позволит Вам выглядеть превосходно в любой ситуации не упустите возможность вдохновиться парфюмерной магией – приходите к нам и окунитесь в ароматный рай а мы поможем вам подобрать тот самый особенный аромат',
              style: TextStyle(
                color: Color.fromARGB(255, 56, 56, 56),
                fontSize: 17,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.grade),
            iconColor: Colors.grey.withOpacity(0.4),
            title: Text('Laboratorio Olfattivo Mandarino - Яркий, радостный и освежающий цитрусовый коктейль. Аромат сочных спелых мандаринов, окутанный нотами нероли и апельсинового цвета. Композиция прекрасно подойдет тем, кто любит яркие, жизнерадостные и привлекающие внимание ароматы.',
              style: TextStyle(
                color: Color.fromARGB(255, 56, 56, 56),
                fontSize: 17,
              ),
            ),
          ),
          Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImages.img11),
                    fit: BoxFit.cover,
                  )
              ),
          ),
          ListTile(
            leading: Icon(Icons.grade),
            iconColor: Colors.grey.withOpacity(0.4),
            title: Text('Jean Paul Gaultier Gaultier Divine - Ослепительный и экстравагантный аромат, подобный горячей танцевальной вечеринке. Нежнейшие ноты цветов и насыщенные аккорды ванили, мускуса и амбры создают чувственную и запоминающуюся композицию. Аромат идеально подходят для тех, кто хочет создать незабываемое впечатление и чувствовать себя уверенно в любой обстановке.',
              style: TextStyle(
                color: Color.fromARGB(255, 56, 56, 56),
                fontSize: 17,
              ),
            ),
          ),
          Container(
            height: 250,
            width: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.img12),
                  fit: BoxFit.cover,
                )
            ),
          ),
          ListTile(
            leading: Icon(Icons.grade),
            iconColor: Colors.grey.withOpacity(0.4),
            title: Text('Karl Lagerfeld Bois de Vetiver - воплощение элегантности и мужественности. Древесно-пряный аккорд ветивера, кардамона и кедра создает теплый и харизматичный аромат. Композиция создана для элегантных, мужественных мужчин, которые ценят классические и утонченные ароматы. Он идеален для деловых встреч, особых случаев и романтических свиданий.',
              style: TextStyle(
                color: Color.fromARGB(255, 56, 56, 56),
                fontSize: 17,
              ),
            ),
          ),
          Container(
            height: 250,
            width: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.img13),
                  fit: BoxFit.cover,
                )
            ),
          ),
        ]
    );
  }
}
