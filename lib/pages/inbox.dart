import 'package:flutter/cupertino.dart';
import 'package:integratesv01/bloc.navigation_bloc/navigation_bloc.dart';

class Inbox extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Inbox",
        style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
      ),
    );
  }
}
