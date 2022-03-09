import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:timeiptv/utils/colors.dart';
import 'package:timeiptv/utils/singleton.dart';

class PlatFormServicePage extends StatelessWidget {
  const PlatFormServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: TabBar(
          tabs: [
            Tab(text: "Cable TV"),
            Tab(text: "DTH"),
            Tab(text: "OTT"),
          ],
        ),
        backgroundColor: AppColor.Page_Body_Background2,
        body: TabBarView(
          children: [
            showImages('CABLE'),
            showImages('DTH'),
            showImages('OTT'),
          ],
        ),
      ),
    );
  }

  showImages(String _type) {
    return GridView.count(
      crossAxisCount: 3,
      controller: new ScrollController(keepScrollOffset: false),
      scrollDirection: Axis.vertical,
      children: Singleton.getPlatformSubList(_type).map((item) {
        return Container(
          padding: EdgeInsets.only(top: 10, left: 2, right: 2),
          child: Card(
            color: Colors.white,
            elevation: 6.0,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: CachedNetworkImage(
                imageUrl: "${Singleton.baseURL}/PLATFORM/${item.logo}",
                height: 50,
                width: 50,
                fit: BoxFit.fill,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
