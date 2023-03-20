import 'package:flutter/material.dart';

class ItemOptions extends StatelessWidget {
  const ItemOptions({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: 100,
          height: 50,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.white,
              shadowColor: Colors.black,
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: const BorderSide(color: Colors.grey),
              ),
            ),
            child: const Text('Previous',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
          ),
        ),
        SizedBox(
          width: 100,
          height: 50,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.white,
              shadowColor: Colors.black,
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: const BorderSide(color: Colors.grey),
              ),
            ),
            child: const Text('Store',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
          ),
        ),
        SizedBox(
          width: 100,
          height: 50,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.white,
              shadowColor: Colors.black,
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: const BorderSide(color: Colors.grey),
              ),
            ),
            child: const Text('Next',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
          ),
        ),
      ],
    );
  }
}
