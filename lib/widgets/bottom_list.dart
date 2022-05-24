import 'package:flutter/material.dart';

class ButtomListView extends StatelessWidget {
  const ButtomListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              '7 - day weather forecast'.toUpperCase(),
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 150,
              padding: const EdgeInsets.all(16),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 100,
                    height: 160,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: const Color(0xff00A1FF).withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: forecastCard(),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(width: 8),
                itemCount: 6,
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget forecastCard() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: const [
      Text(
        '33 °C',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      Image(
        image: AssetImage("assets/rainy_2d.png"),
        width: 55,
        height: 55,
      ),
      Text(
        "Mon",
        style: TextStyle(color: Colors.white, fontSize: 20),
      )
    ],
  );
}
