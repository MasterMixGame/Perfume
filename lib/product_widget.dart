import 'package:flutter/material.dart';
import 'package:test_project/Components/Constants.dart';
import 'package:test_project/Components/mediaquery.dart';
import 'package:test_project/pageview_widget.dart';
import 'package:test_project/stocks_page.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({super.key});

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 400,
      //color: Colors.grey,
      child: Stack(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(5),
                child: Container(
                    height: 300,
                    width: 185,
                    //color: Colors.grey,
                    child: Stack(
                      children: [
                        Padding(
                            padding: EdgeInsets.all(5),
                            child: Container(
                              height: 180,
                              width: 180,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(0),
                                  image: DecorationImage(
                                    image: AssetImage(AppImages.img6),
                                    fit: BoxFit.cover,
                                  )),
                            )),
                        Padding(
                          padding: EdgeInsets.fromLTRB(5, 195, 0, 0),
                          child: Container(
                            height: 50,
                            width: 175,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color.fromARGB(255, 68, 68, 69),
                            ),
                            child: Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(5, 0, 0, 25),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Text(
                                      'Adidas Born Original',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 250, 250, 250),
                                        fontSize: 17,
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(5, 20, 0, 0),
                                      child: Text(
                                        'Цена',
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 254),
                                          fontSize: 17,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 20, 0, 0),
                                        child: Text('86 BYN',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 248, 3, 3),
                                              fontSize: 17,
                                            ))),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                       GestureDetector(
                         onTap: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context)=> StockPage()));
                         },
                       )
                      ],
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
