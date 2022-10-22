import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../controllers/auth.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  final authC = Get.put(
    AuthController(),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => authC.logout(),
            icon: Icon(
              Icons.logout,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(15),
                  width: 175,
                  height: 175,
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/icon/person.png',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Text(
                  'Lorep Ipsum',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Text(
                  'lorep.ipsum@gmail.com',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Container(
              child: Column(
                children: [
                  ListTile(
                    onTap: () {},
                    title: Text(
                      'Update Status',
                      style: TextStyle(fontSize: 22),
                    ),
                    leading: Icon(
                      Icons.note_add_outlined,
                    ),
                    trailing: Icon(Icons.arrow_right),
                  ),
                  ListTile(
                    onTap: () {},
                    title: Text(
                      'Change Profile',
                      style: TextStyle(fontSize: 22),
                    ),
                    leading: Icon(
                      Icons.person,
                    ),
                    trailing: Icon(Icons.arrow_right),
                  ),
                  ListTile(
                    onTap: () {},
                    title: Text(
                      'Change Theme',
                      style: TextStyle(fontSize: 22),
                    ),
                    leading: Icon(
                      Icons.color_lens,
                    ),
                    trailing: Text('Light'),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              bottom: context.mediaQueryPadding.bottom + 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Chat App',
                  style: TextStyle(color: Colors.black54),
                ),
                Text(
                  'v.1.0',
                  style: TextStyle(color: Colors.black54),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
