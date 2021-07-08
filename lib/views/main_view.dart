import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_feed_with_db/viewmodel/news_provider.dart';
import 'package:provider/provider.dart';

import 'news_list.dart';

class MainView extends StatelessWidget {

  NewsProvider provider;

  @override
  Widget build(BuildContext context) {
    provider = Provider.of<NewsProvider>(context);
    return Scaffold(
        backgroundColor: Colors.white,
        body:Center(
          child: Column(
          children: [
            Expanded(
              flex: 4,
              child: NewsListView(
                  provider.noticias
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child:ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20)
                  ),
                  onPressed: () {
                    provider.getFromLocal();
                  },
                  child: const Text('Get News from local'),
                ) ,
              ),
            )
          ],
        )
      )
    );
  }

}