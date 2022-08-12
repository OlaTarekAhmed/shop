import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WACard extends StatefulWidget {
  final String label;
  final int data;
  final Function() add;
  final Function() minus;
  const WACard(this.label, this.data, this.add, this.minus, {Key? key})
      : super(key: key);

  @override
  State<WACard> createState() => _WACardState();
}

class _WACardState extends State<WACard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xff1e152f),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.label,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Icon(
                    Icons.add_shopping_cart,
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          ),
          Image.asset(
            'assets/images/me.jpg',
            height: 50,
            width: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RawMaterialButton(
                fillColor: const Color(0xFF4C4F5E),
                shape: const CircleBorder(side: BorderSide.none),
                onPressed: () {
                  widget.minus();
                },
                child: const Icon(
                  Icons.remove,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "${widget.data}",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              RawMaterialButton(
                fillColor: const Color(0xFF4C4F5E),
                shape: const CircleBorder(side: BorderSide.none),
                onPressed: () {
                  widget.add();
                },
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
