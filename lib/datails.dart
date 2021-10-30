// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

import 'book_model.dart';
import 'main.dart';

class Detail extends StatefulWidget {
  final ShoeModel shoeModel;
  const Detail(this.shoeModel);
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: const [
            Icon(
              Icons.save,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.more_vert_sharp,
              color: Colors.black,
            ),
          ],
          leading: GestureDetector(
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const MyHomePage(),
                ),
              );
            },
          ),
          elevation: 0,
          backgroundColor: Colors.deepOrange[50],
        ),
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                color: Colors.deepOrange[50]),
            height: MediaQuery.of(context).size.height * 0.5,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 0.0, left: 120, bottom: 10, right: 120),
              child: Column(
                children: [
                  Image(
                    image: AssetImage(widget.shoeModel.imgPath),
                    fit: BoxFit.none,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.shoeModel.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.w900, fontSize: 25),
                  ),
                  Text(
                    widget.shoeModel.brand,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 20),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 400, left: 30),
            child: Text(
              'Description',
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 440, left: 30),
            child: Text(
              widget.shoeModel.decs,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 550, left: 30, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(backgroundColor: Colors.white),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.menu_open_sharp,
                          color: Colors.black,
                        ),
                        Text(
                          "Preview",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    )),
                ElevatedButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(backgroundColor: Colors.white),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.message_sharp,
                        color: Colors.black,
                      ),
                      Text(
                        "Reviews",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 600, left: 130, right: 10),
            child: ElevatedButton(
                onPressed: () {},
                style:
                    TextButton.styleFrom(backgroundColor: Colors.indigo[900]),
                child: Text("Buy now for \$29.67")),
          )
        ]));
  }
}
