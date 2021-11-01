import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/models.dart';

import 'custom_theme.dart';
import 'home.dart';

void main() {
  runApp(const GroceryScrollable());
}

class GroceryScrollable extends StatelessWidget {
  const GroceryScrollable({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = CustomTheme.light();
    return MaterialApp(
      theme: theme,
      title: 'GroceryScrollable',
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => TabManager()),
          ChangeNotifierProvider(create: (context) => GroceryManager()),
        ],
        child: const Home(),
      ),
    );
  }
}
