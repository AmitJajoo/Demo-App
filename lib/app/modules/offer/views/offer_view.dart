import 'package:demo1/app/data/dummy_task_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../controllers/offer_controller.dart';

class OfferView extends GetView<OfferController> {
  const OfferView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.arguments as DummyTask;
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text('Offer'),
          toolbarHeight: 80,
          elevation: 0,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(
                          controller.thumbnail!,
                          width: MediaQuery.of(context).size.width * 0.4,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              controller.title!,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Html(data: (controller.shortDesc!)),
                            controller.customData!.appRating!.isEmpty
                                ? SizedBox()
                                : RatingBar.builder(
                                    initialRating: double.parse(
                                        controller.customData!.appRating!),
                                    // minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5, ignoreGestures: true,
                                    itemPadding:
                                        EdgeInsets.symmetric(horizontal: 0.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: HexColor("#FF9E0C"),
                                    ),
                                    unratedColor: HexColor("#E2E2F1"),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  )
                          ],
                        ),
                      )
                    ],
                  ),
                  const Divider(),
                  const Text(
                    "Steps (1/4)",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border:
                            Border.all(color: HexColor("#41A31F"), width: 2)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                                backgroundColor: HexColor("#41A31F"),
                                child: Icon(Icons.done)),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "Install the applications",
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          width: 70,
                          height: 35,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: HexColor("#41A31F"),
                              borderRadius: BorderRadius.circular(20)),
                          child: const Text(
                            "\u20b9 20",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border:
                            Border.all(color: HexColor("#F5970A"), width: 2)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                    backgroundColor: HexColor("#F5970A"),
                                    child: const Icon(
                                      Icons.hourglass_empty,
                                      color: Colors.white,
                                    )),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  "Complete 3 offers",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              width: 70,
                              height: 35,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: HexColor("#F5970A"),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Text(
                                "\u20b9 20",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
                          style: TextStyle(color: HexColor("#9E9E9E")),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: HexColor("#F4F4F4"),
                        borderRadius: BorderRadius.circular(20),
                        border:
                            Border.all(color: HexColor("#F4F4F4"), width: 2)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                                backgroundColor: HexColor("#E0E0E0"),
                                child: SizedBox()),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "Refer Workstation to friend",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          width: 70,
                          height: 35,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: HexColor("#FFFFFF"),
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            "\u20b9 20",
                            style: TextStyle(
                                color: HexColor("#1185D5"),
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: HexColor("#F4F4F4"),
                        borderRadius: BorderRadius.circular(20),
                        border:
                            Border.all(color: HexColor("#F4F4F4"), width: 2)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                                backgroundColor: HexColor("#E0E0E0"),
                                child: SizedBox()),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "Withdraw first amount",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          width: 70,
                          height: 35,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: HexColor("#FFFFFF"),
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            "\u20b9 20",
                            style: TextStyle(
                                color: HexColor("#1185D5"),
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/thunder.jpg"),
                          Text(
                            "23,567 users has already participated",
                            style: TextStyle(color: HexColor("#FF9E0C")),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 60,
                        padding: EdgeInsets.fromLTRB(10.0, 6.0, 10.0, 6.0),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Color(0xff1185D5), Color(0xff33C1EF)]),
                            borderRadius: BorderRadius.circular(25.0)),
                        child: Text(
                          'GET \u20b9364',
                          style: TextStyle(color: Colors.white, fontSize: 24.0),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
