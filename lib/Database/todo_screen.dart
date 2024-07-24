import 'package:flutter/material.dart';
import 'package:test_project/Components/Constants.dart';
import 'package:test_project/Database/database_helper.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {

  bool isLoading = true;
  List<Map<String, dynamic>>itemList = [];
  Future<void> _refreshItemList() async {
    isLoading = true;
    itemList = await DBHelper.getItems();
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
      backgroundColor: Colors.white.withOpacity(0.9),
      appBar: AppBar(
        title: Text('Todo App'),
      ),
      body: isLoading?Center(
        child: CircularProgressIndicator(),
      ):ListView.builder(
        itemCount: itemList.length,
        padding: EdgeInsets.all(10),
        itemBuilder: (context, index){
          return Card(
            color: Colors.white,
            margin: EdgeInsets.only(top: 10),
            child: ListTile(
              title: Text(itemList[index]['title']),
              subtitle: Text(itemList[index]['description']),
              trailing: SizedBox(
                width: 100,
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: (){
                        _showFormDialog(itemList[index]['id']); // Update
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: (){
                        deleteItem(itemList[index]['id']); // delete
                      },
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _showFormDialog(null);
        },
      ),
    );
  }

  // writing
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  void _showFormDialog(int?id) { // update
    if(id!=null)
      {
          final selectedItem = itemList.firstWhere((element) => element['id']==id);
          titleController.text = selectedItem['title'];
          descriptionController.text = selectedItem['description'];
      }
    showModalBottomSheet(
        context: context,
        elevation: 5,
        isScrollControlled: true,
        builder: (_) {
          return Container(
            padding: EdgeInsets.only(
                top: 15,
                left: 15,
                right: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom + 120),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: titleController,
                  decoration: InputDecoration(label: Text('title')),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: descriptionController,
                  decoration: InputDecoration(label: Text('description')),
                ),

                ElevatedButton(
                    onPressed: ()async{
                      if(id!=null)
                        {
                          await updateItem(id);
                                                  }
                      else
                          {
                            await addItem();
                          }
                      titleController.text = '';
                      descriptionController.text = '';
                      Navigator.pop(context);
                    },
                    child: Text('Submit'))
              ],
            ),
          );
        });
  }
  Future<void> addItem() async{
  int id = await DBHelper.createItems(titleController.text, descriptionController.text);
  await _refreshItemList();
  }

  Future<void>updateItem(int id) async{
    await DBHelper.updateItems(id, titleController.text, descriptionController.text);
    await _refreshItemList();
    print('result = ${id}');
  }

  Future<void>deleteItem(int id) async{
    await DBHelper.deleteItems(id);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('item deleted')));
    await _refreshItemList();
    print('result = ${id}');
  }
}
