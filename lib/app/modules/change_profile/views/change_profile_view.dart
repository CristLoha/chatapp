import 'package:chatapp/app/modules/change_profile/controllers/change_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:get/get.dart';

class ChangeProfileView extends GetView<ChangeProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(Icons.arrow_back),
          ),
          backgroundColor: Colors.red[900],
          title: Text('Change Profile'),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.save),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              Column(
                children: [
                  AvatarGlow(
                    endRadius: 75,
                    glowColor: Colors.black,
                    duration: Duration(seconds: 2),
                    child: Container(
                      margin: EdgeInsets.all(15),
                      width: 120,
                      height: 120,
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
                  ),
                  TextField(
                    controller: controller.emailC,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 20,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: controller.nameC,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      labelText: 'Nama',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 20,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: controller.statusC,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      labelText: 'Status',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 20,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Text('no image'),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'chosen',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: Get.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red[900],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 15,
                        ),
                      ),
                      child: Text(
                        'UPDATE',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
