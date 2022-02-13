import 'package:flutter/material.dart';

class CardList extends StatelessWidget {

  String id;
  String name;
  String email;
  Function handleDelete;

  CardList({Key? key, required this.id, required this.name, required this.email, required this.handleDelete}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.album),
            title: Text(name),
            subtitle: Text(email),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: const Text('BUY TICKETS'),
                onPressed: () {/* ... */},
              ),
              const SizedBox(width: 8),
              TextButton(
                child: const Text('Delete'),
                onPressed: () {
                  handleDelete();
                },
              ),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
    );
  }
}