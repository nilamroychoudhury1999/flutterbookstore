import 'package:flutter/material.dart';

import '../model/book.dart';
import '../screens/book_details_screen.dart';

class TopRatedListItem extends StatelessWidget {
  final int index;
  TopRatedListItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 160,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(
            bookDetailsScreen.routeName,
            arguments: {
              'id': topRatedbookList[index].id,
              'title': topRatedbookList[index].title,
              'imageUrl': topRatedbookList[index].imageUrl,
              'description': topRatedbookList[index].description,
              'rating': topRatedbookList[index].rating,
              'year': topRatedbookList[index].year,
              'pages': topRatedbookList[index].pages,
            },
          );
        },
        child: Column(
          children: <Widget>[
            Card(
              elevation: 10,
              child: Hero(
                tag: topRatedbookList[index].id,
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(topRatedbookList[index].imageUrl),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              topRatedbookList[index].title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
