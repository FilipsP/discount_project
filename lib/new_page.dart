import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('A new page'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/zoro.png'),
            const Divider(
              color: Colors.deepOrange,
              height: 200,
            ),
            Image.network(
                'https://data.awol.com.au/wp-content/uploads/2019/11/30624445_2031384813783830_665928700650323968_n-copy.jpg'),
            const Divider(
              color: Colors.deepOrange,
              height: 200,
            ),
            Image.network('https://static.visitestonia.com/images/3560292/1600_900_false_false_ddde11e7aabc7699be7481d45a954d4b.jpg'),
          ],
        ),
      ),
    );
  }
}
