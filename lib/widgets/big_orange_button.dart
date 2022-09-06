import 'package:flutter/material.dart';

class BigOrangeButton extends StatelessWidget {
  const BigOrangeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: Colors.deepOrange,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(20))),
        ),
        child: const Text("Daha fazla oku"));
  }
}