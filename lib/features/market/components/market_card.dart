import 'package:flutter/material.dart';

class MarketCard extends StatelessWidget {
  MarketCard(
      {super.key,
      required this.img,
      required this.logo,
      required this.name,
      required this.location});
  String img, logo, name, location;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    img,
                  ),
                  width: 235,
                  height: 128,
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(logo),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            name,
            style: const TextStyle(
              fontSize: 16,
              fontFamily: 'HeyWow',
              fontWeight: FontWeight.w400,
              height: 1.62,
              letterSpacing: 0.32,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            location,
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'HeyWow',
              fontWeight: FontWeight.w400,
              height: 1.71,
              letterSpacing: 0.56,
            ),
          )
        ],
      ),
    );
  }
}
