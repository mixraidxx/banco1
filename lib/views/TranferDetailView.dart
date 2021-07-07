import 'package:bankapp/Brand/Extensions.dart';
import 'package:flutter/material.dart';

class TranferDetailView extends StatelessWidget {
  static const routeName = "/tranferdetail";
  const TranferDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: BrandColors.accentColor,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
          title: Text("Transfer",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        ),
        body: Column(
          children: [
            Flexible(flex: 2, child: Container()),
            Flexible(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(32),
                          topRight: Radius.circular(32))),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 16,
                        ),
                        TextField(
                          decoration: InputDecoration(hintText: "To"),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                                height: 50,
                                width: double.infinity,
                                child: Center(child: Text("Continue"))))
                      ],
                    ),
                  ),
                ))
          ],
        ));
  }
}
