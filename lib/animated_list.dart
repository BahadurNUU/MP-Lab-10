import 'package:flutter/material.dart';

class MyAnimatedList extends StatefulWidget {
  const MyAnimatedList({super.key});

  @override
  State<MyAnimatedList> createState() => _MyAnimatedListState();
}

class _MyAnimatedListState extends State<MyAnimatedList> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  final List<int> _items = [];

  void _addNewItem() {
    final int newIndex = _items.length;
    _items.add(newIndex);
    _listKey.currentState?.insertItem(
      newIndex,
      duration: const Duration(milliseconds: 400),
    );
  }

  Widget _buildItem(
    BuildContext context,
    int index,
    Animation<double> animation,
  ) {
    return SizeTransition(
      sizeFactor: animation,
      axis: Axis.vertical,
      child: Card(
        color: Colors.blue[100 + (index % 8) * 100],
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: ListTile(title: Text('Item $index')),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Stack(
        children: [
          AnimatedList(
            key: _listKey,
            initialItemCount: _items.length,
            itemBuilder: (context, index, animation) {
              return _buildItem(context, _items[index], animation);
            },
          ),
          Positioned(
            bottom: 16,
            right: 16,
            child: FloatingActionButton(
              onPressed: _addNewItem,
              tooltip: 'Add Item',
              child: const Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
