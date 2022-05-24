import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';

import 'package:flutter_weather_app/widgets/extra_widget.dart';

class CurrentWeather extends StatelessWidget {
  const CurrentWeather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlowContainer(
      height: MediaQuery.of(context).size.height - 290,
      padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
      glowColor: const Color(0xff00A1FF).withOpacity(0.9),
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(60),
        bottomRight: Radius.circular(60),
      ),
      color: const Color(0xff00A1FF),
      child: Column(
        children: [
          const Text(
            "Mamunkanjan",
            style: TextStyle(
              color: Colors.white,
              height: 0.1,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 290,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Image(
                  image: AssetImage(
                    "assets/sunny_2d.png",
                  ),
                  fit: BoxFit.fill,
                ),
                Center(
                  child: Column(
                    children: const [
                      Text(
                        '33°C',
                        style: TextStyle(
                          color: Colors.white,
                          height: 0.1,
                          fontSize: 80,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Clear Sky',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const Divider(color: Colors.white),
          const SizedBox(height: 10),
          const ExtraWeather(),
        ],
      ),
    );
  }
}
