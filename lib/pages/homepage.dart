import 'package:flutter/material.dart';
import 'package:leaditteam/models/news_info.dart';
import 'package:leaditteam/services/api_manager.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<Welcome> _newsModel;

  @override
  void initState() {
    _newsModel = APIManager().getNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News App'),
      ),
      body: Container(
        child: FutureBuilder(
          future: _newsModel,
          builder: (context, snapshot) {

              return ListView.builder(
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      child: Row(
                        children: <Widget>[
                          Image.network(''),
                        ],
                      )

                    );
                  }
              );
            },
        ),
      ),
    );
  }
}
