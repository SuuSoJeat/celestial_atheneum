import 'package:celestial_atheneum/core/models/book.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  final Book book;
  final Function onTap;

  const BookItem({this.book, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
              elevation: 1,
              child: AspectRatio(
                aspectRatio: 3 / 4,
                child: Placeholder(),
              )),
          Text(
            book.title,
            style: Theme.of(context).textTheme.subhead,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            book.author,
            style: Theme.of(context).textTheme.caption,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
