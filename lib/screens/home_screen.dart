import 'package:shop/widgets/stp.dart';
import 'package:flutter/material.dart';

enum Shop { Shoes, Tshirt, Pants }

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var shop = Shop.Shoes;
  int shoes = 1;
  int tshirt = 1;
  int pants = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("My Shop",
            style: TextStyle(
              color: Color.fromARGB(255, 241, 241, 241),
              fontSize: 18,
            )),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  WACard("Shoes", shoes, () {
                    setState(() {
                      shoes++;
                    });
                  }, () {
                    setState(() {
                      if (shoes > 1) {
                        shoes--;
                      }
                    });
                  }),
                  const SizedBox(
                    width: 10,
                  ),
                  WACard("T-shirt", tshirt, () {
                    setState(() {
                      tshirt++;
                    });
                  }, () {
                    setState(() {
                      if (tshirt > 1) {
                        tshirt--;
                      }
                    });
                  }),
                  WACard("Pants", pants, () {
                    setState(() {
                      pants++;
                    });
                  }, () {
                    setState(() {
                      if (pants > 1) {
                        pants--;
                      }
                    });
                  }),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/ResultScreen',
                      arguments: <String, dynamic>{
                        "Shoes": shoes,
                        "T-shirt": tshirt,
                        "Pants": pants,
                      });
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(15)),
                )),
          ),
        ],
      ),
    );
  }
}
