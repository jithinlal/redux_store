import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_store/actions/counter_actions.dart';
import 'package:redux_store/models/app_state.dart';

class DecreaseCountButton extends StatelessWidget {
  DecreaseCountButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, VoidCallback>(
      converter: (Store<AppState> store) {
        return () {
          store.dispatch(new DecrementCountAction());
        };
      },
      builder: (BuildContext context, VoidCallback decrease) {
        return new FloatingActionButton(
          onPressed: decrease,
          child: new Icon(Icons.remove),
        );
      },
    );
  }
}
