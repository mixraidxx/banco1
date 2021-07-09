import 'dart:math';

import 'package:bankapp/Brand/Extensions.dart';
import 'package:bankapp/Brand/ListItem.dart';
import 'package:bankapp/Models/ListItemModels.dart';
import 'package:bankapp/views/OperationsHistoryView.dart';
import 'package:bankapp/views/ProductsView.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

class DetailCardView extends StatefulWidget {
  static const routeName = "/detail";
  const DetailCardView({Key? key}) : super(key: key);

  @override
  _DetailCardViewState createState() => _DetailCardViewState();
}

class _DetailCardViewState extends State<DetailCardView> {
  @override
  Widget build(BuildContext context) {
    var actions = [
      TransferItem(
          "Ultimos movimientos",
          "Ve todas las transacciones de tu cuenta",
          Icons.history,
          OperationsHistoryView.routeName),
      TransferItem("CVV dinámico", "Genera un código de seguridad temporal",
          Icons.credit_card_outlined, "cvv"),
      TransferItem("Estado de cuenta", "Consulta tus estados de cuenta",
          Icons.paid_outlined, OperationsHistoryView.routeName),
      TransferItem("Detalle de cuenta", "Número de cuenta, CLABE y más",
          Icons.info_outline, OperationsHistoryView.routeName),
      TransferItem("Cambiar PIN", "Asigna un nuevo número de PIN",
          Icons.pin_outlined, OperationsHistoryView.routeName),
      // TransferItem("Reissue card", "Issuing a new card with data retention",
      //     Icons.credit_card, OperationsHistoryView.routeName),
      TransferItem("Reportar tarjeta", "Reporta tu tarjeta por obo o extravio",
          Icons.credit_card_off_outlined, OperationsHistoryView.routeName),
    ];

    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          titleSpacing: 0,
          iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
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
                  Text("Mastercard gold Card",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16)),
                  Text("****1234", style: TextStyle(color: Colors.white)),
                ],
              ),
            ],
          ),
          centerTitle: false,
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: BrandColors.accentColor,
        body: Stack(
          children: [
            Container(
              height: 330,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xFFD6A445), Color(0xFFFDCD4E)])),
              child: Stack(
                children: [
                  Container(
                    child: Center(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 55,
                        ),
                        Text(
                          "\$2,142.01",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 16, right: 16),
                          child: Container(
                            width: double.infinity,
                            height: 80,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16))),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                  child: Container(
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                            child: Icon(Icons.south),
                                            padding: EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                                color: BrandColors
                                                    .backgroundColorVariant,
                                                borderRadius:
                                                    BorderRadius.circular(20))),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Earned",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 16),
                                            ),
                                            Text(
                                              "\$2,730",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                VerticalDivider(),
                                Expanded(
                                  child: Container(
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                            child: Icon(Icons.north),
                                            padding: EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                                color: BrandColors
                                                    .backgroundColorVariant,
                                                borderRadius:
                                                    BorderRadius.circular(20))),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Spent",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 16),
                                            ),
                                            Text(
                                              "\$2,730",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )),
                  ),
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
                  height: 300,
                ),
                Expanded(
                    child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(32),
                          topRight: Radius.circular(32))),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Operaciones",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          ...actions
                              .map((item) => ListItem(
                                    title: item.title,
                                    subtitle: item.subtitle,
                                    icon: item.icon,
                                    onTap: () {
                                      if (item.detailRouteName == "cvv") {
                                        cvvBottomSheet();
                                      } else {
                                        Navigator.pushNamed(
                                            context, item.detailRouteName);
                                      }
                                    },
                                  ))
                              .toList()
                        ],
                      ),
                    ),
                  ),
                ))
              ],
            )
          ],
        ));
  }

  cvvBottomSheet() {
    int min = 100; //min and max values act as your 6 digit range
    int max = 999;
    var randomizer = new Random();
    var rNum = min + randomizer.nextInt(max - min);
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32), topRight: Radius.circular(32))),
        builder: (_) {
          return SafeArea(
            child: Container(
              height: 400,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: BrandColors.backgroundColorVariant,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(32),
                            topRight: Radius.circular(32))),
                    width: double.infinity,
                    child: Center(
                      child: Stack(
                        children: [
                          Center(
                              child: Text("$rNum",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold))),
                          Container(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: Text("CVV dinámico",
                                    style: TextStyle(fontSize: 18)),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircularCountDownTimer(
                              height: 100,
                              width: 100,
                              isReverse: true,
                              isReverseAnimation: false,
                              autoStart: true,
                              duration: 300,
                              initialDuration: 0,
                              fillColor: Colors.green,
                              ringColor: BrandColors.backgroundColorVariant,
                              onComplete: () {
                                Navigator.pop(context);
                              },
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                                "Tu código de seguridad (CVV) tiene una validez de 5 minutos",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 18))
                          ],
                        ),
                      ),
                    ),
                  )),
                  Container(
                      child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                            width: double.infinity,
                            child: Center(child: Text("Aceptar")))),
                  ))
                ],
              ),
            ),
          );
        });
  }
}
