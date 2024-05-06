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
                "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwallpapercave.com%2Fwp%2Fwp4013968.jpg&f=1&nofb=1&ipt=cb09b4f6f93ce0cd40a67d5f207e5ac4daf5d17bd2460d4ae2f2de9c376df03b&ipo=images",
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
                "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.Ydq6FnqXD_5Ptecd31eT-wHaEK%26pid%3DApi&f=1&ipt=b8530765d912cd78bbbaf437d62b3b578a91b0a89323f4b2f064edd04ef050f0&ipo=images",
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
