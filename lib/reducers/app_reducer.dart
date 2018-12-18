import 'package:redux_store/models/app_state.dart';
import 'package:redux_store/reducers/counter_reducer.dart';

AppState appReducer(AppState state, action) {
  return new AppState(
      isLoading: false, count: countReducer(state.count, action));
}
