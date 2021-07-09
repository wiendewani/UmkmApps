
import 'package:flutter/material.dart';
import 'package:umkmapp/views/HomePage/section/CarouselSection.dart';
import 'package:umkmapp/views/HomePage/section/FeatureSection.dart';
import 'package:umkmapp/views/HomePage/section/KeteranganSection.dart';
import 'package:umkmapp/views/HomePage/section/MapSection.dart';



class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List _listItem = [
      CarouselSection(),
      FeatureSection(ctx: context),
      MapSection(latitude: -7.9292211, longitude: 112.6128844),
      KeteranganSection(),
    ];

    return SafeArea(

      child: HomePageList(_listItem),
    );
  }
}

class HomePageList extends StatefulWidget {
  List _listItem;

  HomePageList(this._listItem);

  @override
  _HomePageListState createState() => _HomePageListState();
}

class _HomePageListState extends State<HomePageList> {
  List _prefList = [];
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();

  @override
  void initState() {
    super.initState();
    _loadItem();
  }

  Future<void> _loadItem() async {
    for (Widget item in widget._listItem) {
      await Future.delayed(
        Duration(milliseconds: 300),
      );
      _prefList.add(item);
      listKey.currentState.insertItem(_prefList.length - 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedList(
      key: listKey,
      initialItemCount: _prefList.length,
      itemBuilder: (context, index, animation) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(-1.0, 0.0),
            end: Offset.zero,
          ).animate(
            CurvedAnimation(
                parent: animation,
                curve: Curves.easeInOutExpo,
                reverseCurve: Curves.bounceOut),
          ),
          child: _prefList[index],
        );
      },
    );
  }
}
