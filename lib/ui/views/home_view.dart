import 'package:celestial_atheneum/core/dummies.dart';
import 'package:celestial_atheneum/ui/widgets/book_item.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(8.0),
          ),
        ),
        toolbarOpacity: 0.8,
        bottomOpacity: 0.5,
        title: Text("Atheneum"),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            tooltip: "Search",
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: GridView.count(
        padding: EdgeInsets.all(24),
        childAspectRatio: 1 / 2,
        crossAxisSpacing: 48,
        crossAxisCount: 3,
        children: <Widget>[
          ...dummyBooks.map((book) => BookItem(
                book: book,
                onTap: () {
                  print(book.title);
                },
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
