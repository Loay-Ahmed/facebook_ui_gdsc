import 'package:flutter/material.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topStart,
      children: [
        Container(
          width: 100,
          margin: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 5,
          ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                "https://wallpaperaccess.com/full/1163657.jpg",
              ),
              fit: BoxFit.fill,
            ),
            color: Colors.grey,
            borderRadius: BorderRadius.all(
              Radius.circular(
                10,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 15,
            left: 12,
          ),
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: NetworkImage(
                "http://getwallpapers.com/wallpaper/full/c/7/1/460702.jpg",
              ),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              width: 3,
              color: Colors.blue.shade900,
            ),
          ),
        ),
      ],
    );
  }
}
