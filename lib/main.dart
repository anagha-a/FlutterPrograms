import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox("mybox");
  runApp(MaterialApp(
    home: HiveDemo(),
  ));
}

class HiveDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HiveDemoState();
}

class _HiveDemoState extends State {
  List<Map<String, dynamic>> items = [];
  final box = Hive.box('mybox');

  @override
  void initState() {
    super.initState();
    _refreshItems();
  }

  void _refreshItems() {
    final item = box.keys.map((key) {
      final value = box.get(key);
      return {"key": key, "name": value['name'], "quantity": value['quantity']};
    }).toList();
    setState(() {
      items = item.reversed.toList();
    });
  }

//create new item
  Future<void> addItem(Map<String, dynamic> newItem) async {
    await box.add(newItem);
    _refreshItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hive Demo'),
      ),
      body: items.isEmpty
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: items.length,
              itemBuilder: (_, index) {
                final currentItem = items[index];
                return Card(
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    title: Text(currentItem['name']),
                    subtitle: Text(currentItem['quantity'].toString()),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                            onPressed: () {
                              _showForm(context, currentItem['key']);
                            },
                            icon: Icon(Icons.edit)),
                        IconButton(
                            onPressed: () {
                              deleteItem(currentItem['key']);
                            },
                            icon: Icon(Icons.delete))
                      ],
                    ),
                  ),
                );
              }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showForm(context, null),
        child: Icon(Icons.add),
      ),
    );
  }

  final name_controller = TextEditingController();
  final quantity_controller = TextEditingController();

  _showForm(BuildContext context, int? itemKey) async {
    if (itemKey != null) {
      final existingData =
          items.firstWhere((element) => element['key'] == itemKey);
      name_controller.text = existingData['name'];
      quantity_controller.text = existingData['quantity'];
    }
    showModalBottomSheet(
        isScrollControlled: true,
        elevation: 3,
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
                top: 15,
                left: 15,
                right: 15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextField(
                  controller: name_controller,
                  decoration: InputDecoration(hintText: 'Name'),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: quantity_controller,
                  decoration: InputDecoration(hintText: 'Quantity'),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () async {
                      if (itemKey == null) {
                        addItem({
                          'name': name_controller.text,
                          'quantity': quantity_controller,
                        });
                      }
                      if (itemKey != null) {
                        updateItem(itemKey, {
                          'name': name_controller.text.trim(),
                          'quantity': quantity_controller.text.trim()
                        });
                      }
                        name_controller.text = '';
                        quantity_controller.text = '';
                        Navigator.of(context).pop();
                      },
                    
                    child: Text(itemKey == null ? 'Create new' : "Update item"))
              ],
            ),
          );
        });
  }

  Future<void> updateItem(int itemKey, Map<String, dynamic> data) async {
    await box.put(itemKey, data);
    _refreshItems();
  }

  Future<void> deleteItem(int itemKey) async {
    await box.delete(itemKey);
    _refreshItems();
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('Successfully deleted')));
  }
}
