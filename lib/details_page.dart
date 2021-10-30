import 'package:ab/main.dart';
import 'package:flutter/material.dart';

import 'book_model.dart';

List<ShoeModel> shoeList = ShoeModel.list;

class Detail extends StatelessWidget {
  const Detail({Key? key, required this.album}) : super(key: key);
  final ShoeModel album;
  final Color b = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: [
            Icon(
              Icons.save,
              color: b,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.more_vert_sharp,
              color: b,
            ),
          ],
          leading: GestureDetector(
            child: Icon(
              Icons.arrow_back_ios_new,
              color: b,
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
        body: ListView.builder(
            itemCount: shoeList.length,
            itemBuilder: (context, index) {
              return detail(b, shoeList[index].name, shoeList[index].decs,
                  shoeList[index].brand, shoeList[index].imgPath);
            }));
  }
}

class detail extends StatelessWidget {
  const detail(
    this.b,
    this.name,
    this.decs,
    this.brand,
    this.imgPath,
  );

  final Color b;

  final String name;
  final String decs;
  final String brand;
  final String imgPath;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
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
                image: AssetImage(imgPath),
                fit: BoxFit.none,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '$name',
                style:
                    const TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
              ),
              Text(
                "$brand",
                style:
                    const TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
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
          decs,
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
                  children: [
                    Icon(
                      Icons.menu_open_sharp,
                      color: b,
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
                children: [
                  Icon(
                    Icons.message_sharp,
                    color: b,
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
            style: TextButton.styleFrom(backgroundColor: Colors.indigo[900]),
            child: Text("Buy now for \$29.67")),
      )
    ]);
  }
}
