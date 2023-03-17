import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/drawer_controller.dart';

class DrawerView extends GetView<DemoDrawerController> {
  DrawerView({Key? key}) : super(key: key);

  double iconWidth = 22;
  double webViewIconWidth = 20;
  double arrowForwardIconWidth = 20;
  double socialMediaIconWidth = 30;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(
            height: 250,
            child: DrawerHeader(
              padding: const EdgeInsets.only(bottom: 20),
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(60)),
                    padding: const EdgeInsets.all(5),
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/10347606/pexels-photo-10347606.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      radius: 50,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'John Doe',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  const Text(
                    'johndoe@example.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Image.asset(
              "assets/images/my_offers.jpg",
              width: iconWidth,
            ),
            title: const Text('My offers'),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              size: arrowForwardIconWidth,
            ),
            onTap: () {
              // Navigate to home screen
            },
          ),
          const Divider(),
          ListTile(
            leading: Image.asset(
              "assets/images/app_usage.jpg",
              width: iconWidth,
            ),
            title: const Text('App Usage'),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              size: arrowForwardIconWidth,
            ),
            onTap: () {
              // Navigate to home screen
            },
          ),
          const Divider(),
          ListTile(
            leading: Image.asset(
              "assets/images/support.jpg",
              width: iconWidth,
            ),
            title: const Text('Support'),
            trailing: Image.asset(
              "assets/images/webview.jpg",
              width: webViewIconWidth,
            ),
            onTap: () {
              // Navigate to home screen
            },
          ),
          const Divider(),
          ListTile(
            leading: Image.asset(
              "assets/images/terms.jpg",
              width: iconWidth,
            ),
            title: Text('Terms & Conditions'),
            trailing: Image.asset(
              "assets/images/webview.jpg",
              width: webViewIconWidth,
            ),
            onTap: () {
              // Navigate to home screen
            },
          ),
          const Divider(),
          ListTile(
            leading: Image.asset(
              "assets/images/privacy.jpg",
              width: iconWidth,
            ),
            title: const Text('Privacy Policy'),
            trailing: Image.asset(
              "assets/images/webview.jpg",
              width: webViewIconWidth,
            ),
            onTap: () {
              // Navigate to home screen
            },
          ),
          const Divider(),
          ListTile(
            leading: Image.asset(
              "assets/images/rating.jpg",
              width: iconWidth,
            ),
            title: const Text('Rate Us'),
            trailing: Icon(Icons.arrow_forward_ios_outlined,
                size: arrowForwardIconWidth),
            onTap: () {
              // Navigate to home screen
            },
          ),
          const Divider(),
          ListTile(
            leading: Image.asset(
              "assets/images/language.jpg",
              width: iconWidth,
            ),
            title: const Text('Language'),
            trailing: const Text("ENG"),
            onTap: () {
              // Navigate to home screen
            },
          ),
          const Divider(),
          ListTile(
            leading: Image.asset(
              "assets/images/logout.jpg",
              width: iconWidth,
            ),
            title: const Text('Logout'),
            onTap: () {},
          ),
          Divider(),
          SizedBox(height: 20),
          Column(
            children: [
              Center(
                child: Text("Follow Us"),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "assets/images/facebook.jpg",
                    width: socialMediaIconWidth,
                  ),
                  Image.asset(
                    "assets/images/instragram.jpg",
                    width: socialMediaIconWidth,
                  ),
                  Image.asset(
                    "assets/images/youtube.jpg",
                    width: socialMediaIconWidth,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ],
      ),
    );
  }
}
