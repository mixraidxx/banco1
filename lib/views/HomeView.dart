import 'package:bankapp/Brand/Extensions.dart';
import 'package:bankapp/Brand/ListItem.dart';
import 'package:bankapp/views/DetailCardView.dart';
import 'package:flutter/material.dart';

import 'OperationsHistoryView.dart';
import 'ProductsView.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ofertas = [
      CreditsItem(
          "Aumenta tu línea de crédito", "Hasta \$4,800", "credit-card"),
      CreditsItem(
          "¿Necesitas dinero?", "Obtén un prestamo hasta por \$20,000", "cash"),
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: ExactAssetImage("assets/perfil.jpeg"),
                      fit: BoxFit.fitHeight)),
            ),
            Text("My bank",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            Icon(
              Icons.notifications_none,
              color: Colors.white,
            )
          ],
        ),
        backgroundColor: BrandColors.accentColor,
        elevation: 0,
      ),
      backgroundColor: BrandColors.accentColor,
      body: Column(
        children: [
          Flexible(
              flex: 2,
              child: Container(
                  child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  CardItemView(),
                  CardItemView(),
                  CardItemView(),
                  CardItemView(),
                ],
              ))),
          Expanded(
              flex: 4,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32))),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 16.0, left: 16, right: 16),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ofertas",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(height: 16),
                        Container(
                          child: GridView.count(
                            childAspectRatio: 0.7,
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16,
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            crossAxisCount: 2,
                            children: List.generate(
                                ofertas.length,
                                (index) => BrandCard(
                                    title: ofertas[index].title,
                                    subtitle: ofertas[index].subTitle,
                                    image: ofertas[index].image,
                                    onTap: () {
                                      print("Hola");
                                    })),
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          "Ultimos movimientos",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(height: 16),
                        TransacctionItem(
                          title: "Uber",
                          detail: "27 de junio",
                          amount: "250.00",
                          image: 'uber',
                        ),
                        TransacctionItem(
                          title: "Netflix",
                          detail: "25 de junio",
                          amount: "120.00",
                          image: 'netflix',
                        )
                      ],
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

class CardItemView extends StatelessWidget {
  const CardItemView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, DetailCardView.routeName);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16, right: 2),
        child: Container(
          width: 150,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFFD6A445), Color(0xFFFDCD4E)]),
              borderRadius: BorderRadius.all(Radius.circular(16))),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("\$2,142.01",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold)),
                    Text("Gold card", style: TextStyle(color: Colors.white)),
                    Expanded(child: Container()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("****1234",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18)),
                        Container(
                          width: 50,
                          alignment: Alignment.bottomRight,
                          child: Image.asset("assets/mc.png"),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                  alignment: Alignment.bottomLeft,
                  child: Image.asset("assets/bottomRing.png")),
              Container(
                  alignment: Alignment.topRight,
                  child: Image.asset("assets/topRing.png")),
            ],
          ),
        ),
      ),
    );
  }
}
