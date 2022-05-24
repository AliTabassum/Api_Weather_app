import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExtraWeather extends StatelessWidget {
  const ExtraWeather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: const [
            Icon(CupertinoIcons.wind, color: Colors.white),
            SizedBox(height: 10),
            Text(
              "10 Km/h",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              "Wind",
              style: TextStyle(color: Colors.white, fontSize: 16),
            )
          ],
        ),
        Column(
          children: const [
            Icon(CupertinoIcons.drop, color: Colors.white),
            SizedBox(height: 10),
            Text(
              "33 %",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              "Humidity",
              style: TextStyle(color: Colors.white, fontSize: 16),
            )
          ],
        ),
        Column(
          children: const [
            Icon(CupertinoIcons.cloud_rain, color: Colors.white),
            SizedBox(height: 10),
            Text(
              "10 %",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              "Rain",
              style: TextStyle(color: Colors.white, fontSize: 16),
            )
          ],
        )
      ],
    );
  }
}
