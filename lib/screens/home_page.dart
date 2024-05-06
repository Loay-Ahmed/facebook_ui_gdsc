import 'package:facebook_ui_gdsc/widgets/post.dart';
import 'package:facebook_ui_gdsc/widgets/status_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 60,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const CircleAvatar(
                  minRadius: 20,
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(
                    "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwallpaperaccess.com%2Ffull%2F3562758.jpg&f=1&nofb=1&ipt=e172e66c8def40bcbac8360206244896a1c43c8dc9d3fa5492d009cefa99d361&ipo=images",
                  ),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width - 140,
                  child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    // textAlign: TextAlign.start,
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: const InputDecoration(
                      hintText: "What's on your mind?",
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(20),
                          right: Radius.circular(20),
                        ),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                const Icon(
                  Icons.photo_library_outlined,
                  color: Colors.green,
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color.fromARGB(255, 22, 22, 22),
                  width: 4,
                ),
                top: BorderSide(
                  color: Color.fromARGB(255, 22, 22, 22),
                  width: 4,
                ),
              ),
            ),
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 120,
                          width: 100,
                          margin: const EdgeInsets.only(
                            top: 5,
                            left: 5,
                            right: 5,
                          ),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwallpaperaccess.com%2Ffull%2F3562758.jpg&f=1&nofb=1&ipt=e172e66c8def40bcbac8360206244896a1c43c8dc9d3fa5492d009cefa99d361&ipo=images",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 100,
                          padding: const EdgeInsets.only(bottom: 5),
                          margin: const EdgeInsets.only(
                            bottom: 5,
                            left: 5,
                            right: 5,
                          ),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 45, 45, 45),
                            boxShadow: [BoxShadow(color: Colors.black45)],
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Create story",
                                style: TextStyle(
                                    color: Colors.grey.shade100,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: 36,
                      height: 33,
                      margin: const EdgeInsets.only(top: 59),
                      child: Stack(
                        alignment: AlignmentDirectional.bottomCenter,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 45, 45, 45),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 0, 88, 204),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const StatusCard(),
                const StatusCard(),
                const StatusCard(),
                const StatusCard(),
              ],
            ),
          ),
          const Post(),
          const Post(),
          const Post(),
          const Post(),
          const Post(),
        ],
      ),
    );
  }
}
