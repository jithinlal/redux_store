import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_store/reducers/app_reducer.dart';
import 'models/app_state.dart';

void main() => runApp(new MusicParty());

class MusicParty extends StatelessWidget {
  String title = 'Me Suite';
  final store = new Store<AppState>(appReducer,
      initialState: new AppState(), middleware: []);
  @override
  Widget build(BuildContext context) {
    return new StoreProvider(
      store: store,
      child: new MaterialApp(
        title: title,
        debugShowCheckedModeBanner: false,
        home: new HomePage(title),
      ),
    );
  }
}
