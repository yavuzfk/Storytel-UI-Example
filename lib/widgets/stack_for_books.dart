import 'package:flutter/material.dart';

class stackForBooks extends StatelessWidget {
  const stackForBooks({
    Key? key,
    required this.bookImagePath,
  }) : super(key: key);
  final String bookImagePath;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            width: 150,
           // height: 150,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              boxShadow: [BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 9,
                offset: Offset(2, 0),
              )],
            ),
            child: Image.asset(
              bookImagePath,
              height: 140,
              width: 250,

            ),

          ),
        ),
      ],
    );
  }
}

// Align(
//   alignment: Alignment.topRight,
//   child: Icon(Icons.add),
// ),

// Positioned(
//   top:0.0,
//   right: 0.0,
//   child: Padding(
//     padding: const EdgeInsets.only(bottom: 10.0),
//     child: new IconButton(
//         icon: Icon(Icons.cancel,color: Colors.red,),
//         onPressed: () {}),
//   ),
// )
