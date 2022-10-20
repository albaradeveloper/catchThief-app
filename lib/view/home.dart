import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      appBar: AppBar(
         title:const Text("AGBOD 9"),
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
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.teal),
              ),
              leading: Icon(
                Icons.person,
                color: Colors.teal,
              ),
            ),
            ListTile(
              title: Text(
                'My Devices',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.teal),
              ),
              leading: Icon(
                Icons.phone_iphone_sharp,
                color: Colors.teal,
              ),
            ),
            ListTile(
              title: Text(
                'Contact Me',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.teal),
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
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.teal),
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
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.teal),
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
                children: const [
                  Padding(
                  padding: EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Seruial Number',
                        hintText: 'Enter Seruial Number '),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        
                        labelText: 'Device Name',
                        hintText: 'Enter Device Name'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  child: TextField(
                    obscureText: true,
                    
                    decoration: InputDecoration(
                        labelText: 'Color',
                        hintText: 'Enter Device Color'),
                  ),
                ),
                  
                ],
              )
            );

        },
        child: const Icon(Icons.add),
      ),
      body: const Padding(
                  padding: EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        icon: Icon(Icons.search),
                        labelText: 'Search',
                        hintText: 'Enter Your Seriual Number'),
                  ),
                ),
    );
  }
}
