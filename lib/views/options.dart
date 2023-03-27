import 'package:flutter/material.dart';
import '../data/jankenpo-options.dart';
import 'package:flutter/foundation.dart';
import '../components/option-tile.dart';
import 'dart:developer';

class Options extends StatelessWidget {
    final options = {...JANKENPO_OPTIONS};

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Jankenpo - escolha uma opção'),
            ),
            body: ListView.builder(
                itemCount: options.length,
                itemBuilder: (ctx, i) => OptionTile(options.values.elementAt(i))
            )
        );
    }
}