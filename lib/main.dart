import 'package:facebook_ui_gdsc/screens/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          backgroundColor: Colors.grey.shade900,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            actionsIconTheme:
                IconThemeData(color: Colors.grey.shade500, size: 25),
            title: const Text(
              "facebook",
              style: TextStyle(
                color: Color.fromARGB(255, 240, 240, 240),
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add_circle,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search_sharp,
                ),
              ),
            ],
            elevation: 0,
            shadowColor: Colors.transparent,
            shape: const Border(
              bottom: BorderSide(
                width: 1,
              ),
            ),
            bottom: TabBar(
              indicatorColor: Colors.blue.shade700,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: const EdgeInsets.symmetric(horizontal: 2),
              labelColor: Colors.blue.shade700,
              indicator: UnderlineTabIndicator(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                borderSide: BorderSide(
                  width: 3,
                  color: Colors.blue.shade700,
                ),
              ),
              unselectedLabelColor: Colors.grey,
              mouseCursor: MaterialStateMouseCursor.clickable,
              splashFactory: NoSplash.splashFactory,
              tabs: const [
                Tab(
                  icon: Icon(
                    Icons.home_filled,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.supervised_user_circle_outlined,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.account_circle_outlined,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.notifications_none_outlined,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.menu,
                  ),
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              HomePage(),
              HomePage(),
              HomePage(),
              HomePage(),
              HomePage(),
            ],
          ),
        ),
      ),
    );
  }
}
