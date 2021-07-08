import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_feed_with_db/models/db/news_db_model.dart';

import 'news_list_item.dart';

class NewsListView extends StatelessWidget {

  List<NewsDBModel> terapeutasList;

  NewsListView(this.terapeutasList);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:showLoaderOrList()
    );
  }

  Widget showLoaderOrList() {
    return buildListWithData(
        terapeutasList
    );
  }

  ListView buildListWithData(List<NewsDBModel> terapuetas) {
    log("longitud: ${terapuetas.length}");
    return getTerapuetasList(terapuetas);
  }

  ListView getTerapuetasList(List<NewsDBModel> terapeutas) {
    List<Widget> list = [];
    log("longitud: ${terapeutas.length}");
    for(NewsDBModel terapeuta in terapeutas){
      list.add(
          NewsListItem(
              terapeuta
          )
      );
    }
    log("widgets: ${list.length}");
    return ListView(
        children: list
    );
  }

}