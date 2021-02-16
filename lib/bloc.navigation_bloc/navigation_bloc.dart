import 'package:bloc/bloc.dart';
import 'package:integratesv01/pages/search.dart';
import '../pages/myaccountspage.dart';
import '../pages/myorderspage.dart';
import '../pages/search.dart';
import '../pages/homepage.dart';
import '../pages/inbox.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  MyAccountClickedEvent,
  MyOrdersClickedEvent,
  Search,
  Inbox,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  NavigationBloc(NavigationStates initialState) : super(initialState);

  NavigationStates get initialState => HomePage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield HomePage();
        break;
      case NavigationEvents.MyAccountClickedEvent:
        yield MyAccountsPage();
        break;
      case NavigationEvents.MyOrdersClickedEvent:
        yield MyOrdersPage();
        break;
      case NavigationEvents.Search:
        yield Search();
        break;
      case NavigationEvents.Inbox:
        yield Inbox();
        break;
    }
  }
}
