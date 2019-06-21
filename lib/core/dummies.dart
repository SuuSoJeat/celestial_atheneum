import 'package:celestial_atheneum/core/models/book.dart';

var dummyBooks = List.generate(
    40,
    (index) => Book(
        id: index.toString(),
        title: "Title ${index.toString()}",
        coverPhotoUrl: index.toString(),
        author: "Author ${index.toString()}"));
