import 'package:flutter/material.dart';

class OperationsHistoryView extends StatelessWidget {
  static const routeName = "/operations";
  const OperationsHistoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          titleSpacing: 0,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(Icons.search),
            )
          ],
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 40,
                height: 40,
                alignment: Alignment.bottomRight,
                child: Center(child: Image.asset("assets/mc.png")),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
              ),
              SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Operation history",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16)),
                  Text("****1234", style: TextStyle(color: Colors.white)),
                ],
              ),
            ],
          ),
        ),
        body: Stack(children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFFD6A445), Color(0xFFFDCD4E)])),
            child: Stack(
              children: [
                Container(
                    alignment: Alignment.bottomLeft,
                    child: Image.asset("assets/bottomRing.png")),
                Container(
                    alignment: Alignment.topRight,
                    child: Image.asset("assets/topRing.png"))
              ],
            ),
          ),
          Column(
            children: [
              Container(
                height: 120,
              ),
              Expanded(
                  child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32))),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Today",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        TransacctionItem(
                          title: "Uber",
                          detail: "Transport",
                          amount: "250.00",
                          image: 'uber',
                        ),
                        TransacctionItem(
                          title: "Netflix",
                          detail: "Entretaiment",
                          amount: "120.00",
                          image: 'netflix',
                        )
                      ],
                    ),
                  ),
                ),
              ))
            ],
          )
        ]));
  }
}

class TransacctionItem extends StatelessWidget {
  final String title;
  final String detail;
  final String amount;
  final String image;

  const TransacctionItem({
    Key? key,
    required this.title,
    required this.detail,
    required this.amount,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: ExactAssetImage("assets/$image.png"),
                      fit: BoxFit.fill)),
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text(detail, style: TextStyle(fontSize: 16))
                ],
              ),
            ),
            Text(
              "\$$amount",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            )
          ],
        ),
        Divider()
      ],
    );
  }
}
