import 'package:flutter/material.dart';

class BottomAppBarS extends StatelessWidget {
  const BottomAppBarS({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: TabBar(
        padding: EdgeInsets.zero,
        onTap: (value) {},
        controller: _tabController,
        tabs: const [
          Tab(
            icon: Icon(
              Icons.lightbulb_outline_rounded,
            ),
            text: 'Keşfet',
          ),
          Tab(
            icon: Icon(Icons.search),
            text: 'Ara',
          ),
          Tab(
            icon: Icon(Icons.favorite_border),
            text: 'Kitaplığım',
          ),
          Tab(
            icon: Icon(Icons.person_outline),
            text: 'Profilim',
          ),
        ],
        labelColor: Colors.deepOrange,
        unselectedLabelColor: Colors.black45,
        indicatorColor: Colors.transparent,
      ),
    );
  }
}