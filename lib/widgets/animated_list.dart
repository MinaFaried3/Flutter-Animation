import 'package:flutter/material.dart';

class AnimatedListWidget extends StatefulWidget {
  const AnimatedListWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedListWidget> createState() => _AnimatedListState();
}

class _AnimatedListState extends State<AnimatedListWidget> {
  final items = [];
  final GlobalKey<AnimatedListState> key = GlobalKey();

  void addItem() {
    items.insert(0, "item ${items.length + 1}");
    key.currentState!.insertItem(0, duration: const Duration(seconds: 1));
  }

  void remove(int index) {
    key.currentState!.removeItem(
      0,
      (context, animation) => SizeTransition(
        sizeFactor: animation,
        child: const Card(
          margin: EdgeInsets.all(10),
          color: Colors.red,
          child: ListTile(
            title: Text(
              "Deleted",
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      ),
      duration: const Duration(milliseconds: 300),
    );

    items.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xBD1A253D),
      body: SafeArea(
          child: Column(
        children: [
          IconButton(
              onPressed: addItem,
              icon: const Icon(
                Icons.add,
                color: Colors.white,
              )),
          Expanded(
            child: AnimatedList(
              key: key,
              initialItemCount: 0,
              padding: const EdgeInsets.all(10),
              itemBuilder: (context, index, animation) {
                return SizeTransition(
                  sizeFactor: animation,
                  key: UniqueKey(),
                  child: Card(
                    margin: const EdgeInsets.all(10) +
                        const EdgeInsets.only(left: 2),
                    color: Colors.orangeAccent,
                    child: ListTile(
                      title: Text(
                        items[index],
                        style: const TextStyle(fontSize: 24),
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          remove(index);
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      )),
    );
  }
}
