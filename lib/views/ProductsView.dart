import 'package:bankapp/Brand/Extensions.dart';
import 'package:flutter/material.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final credits = [
      CreditsItem("Credit card", "Up to \$1500", "credit-card"),
      CreditsItem("Auto credit", "From 11.2% per annum", "car")
    ];

    final mortage = [
      CreditsItem("House morgage", "From 7.6% per annum", "house"),
      CreditsItem("Flat morgage", "From 8.2% per annum", "flat")
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Products",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
      backgroundColor: BrandColors.accentColor,
      body: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32), topRight: Radius.circular(32))),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Text(
              "Credits",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 4,
            ),
            Text("Money for any purchase"),
            SizedBox(
              height: 8,
            ),
            Container(
              child: GridView.count(
                childAspectRatio: 0.7,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                children: List.generate(
                    credits.length,
                    (index) => BrandCard(
                        title: credits[index].title,
                        subtitle: credits[index].subTitle,
                        image: credits[index].image,
                        onTap: () {
                          print("Hola");
                        })),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Mortgage",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 4,
            ),
            Text("To start a comfortable life"),
            SizedBox(
              height: 8,
            ),
            Container(
              child: GridView.count(
                childAspectRatio: 0.7,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                children: List.generate(
                    mortage.length,
                    (index) => BrandCard(
                        title: mortage[index].title,
                        subtitle: mortage[index].subTitle,
                        image: mortage[index].image,
                        onTap: () {
                          print("Hola");
                        })),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BrandCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final Function onTap;
  const BrandCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.onTap,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: BrandColors.backgroundColorVariant,
          borderRadius: BorderRadius.circular(16)),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: ExactAssetImage("assets/$image.png"))),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: BrandColors.accentColorVariant,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            ElevatedButton(
                onPressed: () {
                  onTap();
                },
                child: Text(
                  "¡Me interesa!",
                  style: TextStyle(fontSize: 12),
                ))
          ],
        ),
      ),
    );
  }
}

class CreditsItem {
  final String title;
  final String subTitle;
  final String image;

  CreditsItem(this.title, this.subTitle, this.image);
}
