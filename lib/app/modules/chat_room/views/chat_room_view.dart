import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/chat_room_controller.dart';

class ChatRoomView extends GetView<ChatRoomController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.red[900],
            leadingWidth: 100,
            leading: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(100),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 5),
                    InkWell(
                      onTap: () => Get.back(),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Icon(Icons.arrow_back),
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    SizedBox(width: 5),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey,
                      child: Image.asset('assets/icon/person.png'),
                    ),
                  ],
                ),
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lorem Ipsum',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'statusnya lorem',
                  style: TextStyle(fontSize: 13),
                ),
              ],
            )),
        body: Column(
          children: [
            Expanded(
              child: Container(
                child: ListView(
                  children: [
                    ItemChat(isSender: false),
                    ItemChat(isSender: true),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: context.mediaQueryPadding.bottom),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: Get.width,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.emoji_emotions_outlined,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Material(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.red[900],
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(100),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class ItemChat extends StatelessWidget {
  final bool isSender;
  const ItemChat({
    Key? key,
    required this.isSender,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Column(
        crossAxisAlignment:
            isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.red[900],
              borderRadius: isSender
                  ? BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    )
                  : BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
            ),
            child: Text(
              'Halo Bambang',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 5),
          Text('18:22 PM'),
        ],
      ),
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
    );
  }
}
