import 'package:flutter/material.dart';

void main() {
  runApp(const FavoritesPage());
}

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Favorites Page',
      theme: ThemeData(),
      home: const FavoritesList(),
    );
  }
}

class FavoritesList extends StatefulWidget {
  const FavoritesList({super.key});

  @override
  State<FavoritesList> createState() => _FavoritesListState();
}

class _FavoritesListState extends State<FavoritesList> {
  final List<String> _favorites = <String>[
    'Cupcake',
    'Donut',
    'Eclair',
    'Banana',
    'Gingerbread',
    'Honeycomb',
    'Ice Cream Sandwich',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Favorites', style: TextStyle(fontSize: 30)),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          child: ListView.builder(
            itemCount: _favorites.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    title: Text(_favorites[index],
                        style: const TextStyle(fontSize: 24)),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                                  shape: ContinuousRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  title:
                                      const Text('Delete item from Favorites?'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, 'No'),
                                      child: const Text('No'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        setState(() {
                                          _favorites.removeAt(index);
                                        });
                                        Navigator.pop(context, 'Yes');
                                      },
                                      child: const Text('Yes'),
                                    ),
                                  ],
                                ));
                      },
                    )),
              );
            },
          ),
        ));
  }
}
