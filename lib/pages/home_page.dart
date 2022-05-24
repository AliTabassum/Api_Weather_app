import 'package:flutter/material.dart';
import 'package:flutter_weather_app/widgets/bottom_list.dart';
import 'package:flutter_weather_app/widgets/current_weather.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff030317),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff00A1FF),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: const Icon(
                Icons.menu,
                color: Colors.white,
                size: 30,
              ),
            ),
            const Text(
              'Weather App',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            GestureDetector(
              child: const Icon(
                Icons.search_outlined,
                color: Colors.white,
                size: 30,
              ),
              onTap: () {},
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: const [
              CurrentWeather(),
              ButtomListView(),
            ],
          ),
        ],
      ),
    );
  }
}
