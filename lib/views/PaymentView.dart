import 'package:bankapp/Brand/Extensions.dart';
import 'package:bankapp/Brand/ListItem.dart';
import 'package:bankapp/Models/ListItemModels.dart';
import 'package:bankapp/views/TranferDetailView.dart';
import 'package:flutter/material.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var opciones = [
      TransferItem("By phone number", "Transfer by phone number to any bank",
          Icons.phone_android, TranferDetailView.routeName),
      TransferItem("By card number", "Transfer by card number to any bank",
          Icons.credit_card, TranferDetailView.routeName),
      TransferItem(
          "Translation by requisites",
          "Transfer by requesites to any bank",
          Icons.description_outlined,
          TranferDetailView.routeName),
      TransferItem(
          "Tranfer between accounts",
          "Transferring betweent your accounts",
          Icons.swap_horiz,
          TranferDetailView.routeName),
    ];

    var pagos = [
      TransferItem("Scan QR-code", "Payment of payments by QR-code",
          Icons.qr_code, TranferDetailView.routeName),
      TransferItem("Mobile connection", "Payment for mobile services",
          Icons.phone_android, TranferDetailView.routeName),
      TransferItem("Internet, TV", "Payment for internet and TV services",
          Icons.tv, TranferDetailView.routeName),
      TransferItem(
          "Utilities",
          "Payment for services of accommodation expenses",
          Icons.house_outlined,
          TranferDetailView.routeName),
      TransferItem(
          "Other services",
          "Payment for services not included in the list",
          Icons.search,
          TranferDetailView.routeName),
    ];
    return Scaffold(
      backgroundColor: BrandColors.accentColor,
      appBar: AppBar(
        title: Text("Payments",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
      body: Column(
        children: [
          Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Recent transactions",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Card(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: ExactAssetImage(
                                              "assets/macdonalds.png"),
                                          fit: BoxFit.fill)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Macdonalds",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ))
                        ],
                      )
                    ],
                  ),
                ),
              )),
          Flexible(
              flex: 5,
              child: Container(
                height: double.infinity,
                width: double.infinity,
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
                          "Transfers",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        ...opciones
                            .map((item) => ListItem(
                                  title: item.title,
                                  subtitle: item.subtitle,
                                  icon: item.icon,
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, item.detailRouteName);
                                  },
                                ))
                            .toList(),
                        Text(
                          "Payments",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        ...pagos
                            .map((item) => ListItem(
                                  title: item.title,
                                  subtitle: item.subtitle,
                                  icon: item.icon,
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, item.detailRouteName);
                                  },
                                ))
                            .toList(),
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
