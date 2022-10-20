import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:udomy/view/component/IostumTextFromField.dart';

import 'component/valid.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController search = TextEditingController();
  final TextEditingController serial = TextEditingController();
  final TextEditingController color = TextEditingController();
  final TextEditingController company = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      appBar: AppBar(
        title: const Text("AGBOD 9"),
        centerTitle: true,
        backgroundColor: Colors.teal[100],
        elevation: 0.0,
      ),
      drawer: Drawer(
        child: Column(
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text('Albara Omer'),
              accountEmail: Text('abraomr@gmail.com'),
              arrowColor: Colors.amber,
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.teal,
                child: Text("AO"),
              ),
            ),
            ListTile(
              title: Text(
                'Profile',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.teal),
              ),
              leading: Icon(
                Icons.person,
                color: Colors.teal,
              ),
            ),
            ListTile(
              title: Text(
                'My Devices',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.teal),
              ),
              leading: Icon(
                Icons.phone_iphone_sharp,
                color: Colors.teal,
              ),
            ),
            ListTile(
              title: Text(
                'Contact Me',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.teal),
              ),
              leading: Icon(
                Icons.contact_support_outlined,
                color: Colors.teal,
              ),
            ),
            Divider(),
            ListTile(
              title: Text(
                'Setting',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.teal),
              ),
              leading: Icon(
                Icons.settings_outlined,
                color: Colors.teal,
              ),
            ),
            SizedBox(
              height: 350.0,
            ),
            ListTile(
              title: Text(
                'LogOut',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.teal),
              ),
              leading: Icon(
                Icons.logout_outlined,
                color: Colors.teal,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.defaultDialog(
              title: "ADD YOUR PHONE",
              backgroundColor: Colors.teal,
              titleStyle: const TextStyle(color: Colors.white),
              middleTextStyle: const TextStyle(color: Colors.white),
              textConfirm: "ADD",
              textCancel: "Cancel",
              cancelTextColor: Colors.white,
              confirmTextColor: Colors.white,
              buttonColor: Colors.amber,
              barrierDismissible: false,
              radius: 50,
              content: Column(
                children:  [
                 CostumTextFromField(
              hint: "Serisl Number",
              icon: const Icon(Icons.mobile_friendly),
              controller: serial,
              valid: (val) {
                return vaildInput(val!, 3, 10);
              }),
                  CostumTextFromField(
              hint: "Company",
              icon: const Icon(Icons.brightness_auto_outlined),
              controller: company,
              valid: (val) {
                return vaildInput(val!, 3, 10);
              }),
                  CostumTextFromField(
              hint: "Color",
              icon: const Icon(Icons.color_lens),
              controller: color,
              valid: (val) {
                return vaildInput(val!, 3, 10);
              })
                ],
              ));
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
          padding: const EdgeInsets.only(
              left: 15.0, right: 15.0, top: 15, bottom: 0),
          child: CostumTextFromField(
              hint: "Search",
              icon: const Icon(Icons.search),
              controller: search,
              valid: (val) {
                return vaildInput(val!, 3, 10);
              })),
    );
  }
}
