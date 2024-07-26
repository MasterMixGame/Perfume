import 'package:flutter/material.dart';
import 'package:test_project/Components/Constants.dart';
import 'package:test_project/Database/database_helper.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  TextEditingController productNameController = TextEditingController();
  TextEditingController gramController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController discountController = TextEditingController();
  TextEditingController otherController = TextEditingController();

  List<Map<String, dynamic>> ItemList = [];

  List<String> ListImage = [
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

  bool isLoading = true;
  Future<void> _refreshItemList() async {
    isLoading = true;
    ItemList = await DBHelper.getItems();
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _refreshItemList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: 400,
        color: Color.fromARGB(232, 252, 252, 252),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(0),
              child: Container(
                height: 180,
                width: 400,
                color: Color.fromARGB(255, 107, 0, 218),
                child: Stack(
                  children: [
                    Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            'Товарный склад',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(232, 252, 252, 252),
                            ),
                          ),
                        )),
                    Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 50, 0, 0),
                            child: Container(
                                height: 30,
                                width: 240,
                                color: Color.fromARGB(232, 252, 252, 252),
                                child: Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: TextFormField(
                                      controller: productNameController,
                                      decoration: InputDecoration(
                                        hintText: 'Название товара',
                                        labelStyle: new TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                        ),
                                      )),
                                ))),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 50, 0, 0),
                            child: Container(
                                height: 30,
                                width: 120,
                                color: Color.fromARGB(232, 252, 252, 252),
                                child: Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: TextFormField(
                                      controller: gramController,
                                      decoration: InputDecoration(
                                        hintText: 'гр',
                                        labelStyle: new TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                        ),
                                      )),
                                ))),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 90, 0, 0),
                            child: Container(
                                height: 30,
                                width: 180,
                                color: Color.fromARGB(232, 252, 252, 252),
                                child: Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: TextFormField(
                                      controller: amountController,
                                      decoration: InputDecoration(
                                        hintText: 'Cумма',
                                        labelStyle: new TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                        ),
                                      )),
                                ))),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 90, 0, 0),
                            child: Container(
                                height: 30,
                                width: 180,
                                color: Color.fromARGB(232, 252, 252, 252),
                                child: Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: TextFormField(
                                      controller: discountController,
                                      decoration: InputDecoration(
                                        hintText: 'Скидка',
                                        labelStyle: new TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                        ),
                                      )),
                                ))),
                      ],
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(10, 130, 0, 0),
                        child: Container(
                            height: 30,
                            width: 370,
                            color: Color.fromARGB(232, 252, 252, 252),
                            child: Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: TextFormField(
                                  controller: otherController,
                                  decoration: InputDecoration(
                                    hintText: 'Другое',
                                    labelStyle: new TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  )),
                            ))),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 175, 0, 0),
              child: isLoading
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : ListView.builder(
                      itemCount: ItemList.length,
                      padding: EdgeInsets.all(5),
                      itemBuilder: (context, index) {
                        return Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                          color: Color.fromARGB(255, 107, 0, 218),
                          margin: EdgeInsets.only(top: 10),
                          elevation: 5,
                          child: ListTile(
                            leading: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                  image: DecorationImage(
                                image: AssetImage(ListImage[index]),
                              )),
                            ),
                            title: Text(
                              ItemList[index]['productName'],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(232, 252, 252, 252),
                              ),
                            ),
                            subtitle: Text(
                              ItemList[index]['amount'],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(
                                    255, 248, 3, 3),
                              ),
                            ),
                            trailing: SizedBox(
                              width: 100,
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.edit),
                                    color: Color.fromARGB(232, 252, 252, 252),
                                    onPressed: () {
                                      _showFormDialog(ItemList[index]['id']);
                                      _refreshItemList();
                                    },
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.delete),
                                    color: Color.fromARGB(232, 252, 252, 252),
                                    onPressed: () {
                                      deleteItem(ItemList[index]['id']);
                                      _refreshItemList();
                                    },
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _showFormDialog(null);
        },
      ),
    );
  }

  void _showFormDialog(int? id) {
    if (id != null) {
      final selectedItem =
          ItemList.firstWhere((element) => element['id'] == id);
      productNameController.text = selectedItem['productName'];
      gramController.text = selectedItem['gram'];
      amountController.text = selectedItem['amount'];
      discountController.text = selectedItem['discount'];
      otherController.text = selectedItem['other'];
    }
    showModalBottomSheet(
        context: context,
        elevation: 5,
        isScrollControlled: true,
        builder: (_) {
          return Container(
            padding: EdgeInsets.only(
                top: 25,
                left: 25,
                right: 25,
                bottom: MediaQuery.of(context).viewInsets.bottom + 250),
            color: Color.fromARGB(255, 107, 0, 218),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text('Вводите товары',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(232, 252, 252, 252),
                  ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Container(
                        height: 30,
                        width: 250,
                        color: Color.fromARGB(232, 252, 252, 252),
                        child: Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: TextFormField(
                            controller: productNameController,
                            decoration: InputDecoration(hintText: 'Навзвание товара',
                              labelStyle: new TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        )
                    )
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Container(
                      height: 30,
                      width: 250,
                      color: Color.fromARGB(232, 252, 252, 252),
                      child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: TextFormField(
                          controller: gramController,
                          decoration: InputDecoration(hintText: 'Гр',
                            labelStyle: new TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      )
                    )
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Container(
                        height: 30,
                        width: 250,
                        color: Color.fromARGB(232, 252, 252, 252),
                        child: Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: TextFormField(
                            controller: amountController,
                            decoration: InputDecoration(hintText: 'Сумма',
                              labelStyle: new TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        )
                    )
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Container(
                        height: 30,
                        width: 250,
                        color: Color.fromARGB(232, 252, 252, 252),
                        child: Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: TextFormField(
                            controller: discountController,
                            decoration: InputDecoration(hintText: 'Скидка',
                              labelStyle: new TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        )
                    )
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Container(
                        height: 30,
                        width: 250,
                        color: Color.fromARGB(232, 252, 252, 252),
                        child: Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: TextFormField(
                            controller: otherController,
                            decoration: InputDecoration(hintText: 'Другое',
                              labelStyle: new TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        )
                    )
                ),
                SizedBox(
                  height: 5,
                ),
                Divider(),
                Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Row(
                      children: [
                        ElevatedButton(
                            onPressed: () async {
                              if (id != null) {
                                await updateItem(id);
                              } else {
                                await addItem();
                              }
                              productNameController.text = '';
                              gramController.text = '';
                              amountController.text = '';
                              discountController.text = '';
                              otherController.text = '';
                              Navigator.pop(context);
                            },
                            child: Text('Добавить')),
                        SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                            onPressed: ()  {
                              Navigator.pop(context);
                            },
                            child: Text('Закрить')),
                      ],
                    )),
              ],
            ),
          );
        });
  }

  Future<void> addItem() async {
    int id = await DBHelper.createItems(
        productNameController.text,
        gramController.text,
        amountController.text,
        discountController.text,
        otherController.text);
    await _refreshItemList();
  }

  Future<void> updateItem(int id) async {
    await DBHelper.updateItems(
        id,
        productNameController.text,
        gramController.text,
        amountController.text,
        discountController.text,
        otherController.text);
    await _refreshItemList();

    print('result = ${id}');
  }

  Future<void> deleteItem(int id) async {
    await DBHelper.deleteItems(id);
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('Файл удалено')));
    print('result = ${id}');
  }
}
