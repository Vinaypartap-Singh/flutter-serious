import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorWidget extends StatefulWidget {
  const CalculatorWidget({super.key});

  @override
  State<CalculatorWidget> createState() => _CalculatorWidgetState();
}

class _CalculatorWidgetState extends State<CalculatorWidget> {
  int x = 0;
  int y = 0;
  int z = 0;

  final inputOneController = TextEditingController();
  final inputTwoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextInput1(hint: "1st Number", controller: inputOneController),
          SizedBox(height: 30),
          TextInput1(hint: "2nd Number", controller: inputTwoController),
          SizedBox(height: 30),
          Text(
            z.toString(),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                onPressed: () {},
                child: Icon(CupertinoIcons.add),
              ),
              FloatingActionButton(
                onPressed: () {},
                child: Icon(CupertinoIcons.minus),
              ),
              FloatingActionButton(
                onPressed: () {},
                child: Icon(CupertinoIcons.multiply),
              ),
              FloatingActionButton(
                onPressed: () {},
                child: Icon(CupertinoIcons.divide),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TextInput1 extends StatelessWidget {
  const TextInput1({
    super.key,
    this.hint = "Enter a number",
    required this.controller,
  });

  final String? hint;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        hintText: hint,
      ),
    );
  }
}
