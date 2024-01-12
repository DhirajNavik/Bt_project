import 'package:cabto_bt/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColor.black,
          centerTitle: true,
          title: Text(
            "HiveDB",
          )),
      body: Column(children: [
        FutureBuilder(
            future: Hive.openBox('Dhiraj'),
            builder: (context, snapshot) {
              return Column(children: [
                ListTile(
                  title: Text(snapshot.data!.get('name').toString()),
                  subtitle: Text(snapshot.data!.get('age').toString()),
                  trailing: IconButton(
                    onPressed: () {
                      snapshot.data!.put('name', 'DK_Navik');
                      if (true) {
                        Future.delayed(Duration(seconds: 3), () {
                          snapshot.data!.delete('name');
                          setState(() {});
                        });
                      }
                      setState(() {});
                    },
                    icon: Icon(Icons.edit),
                  ),
                )
              ]);
            })
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var box = await Hive.openBox('Dhiraj');

          box.put('name', 'dhiraj navik');
          box.put('age', '25');
          box.put('details', {'profession': 'developer', 'work': 'full-time'});
          print(box.get('name'));
          print(box.get('age'));
          print(box.get('details')['work']);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
