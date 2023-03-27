import 'package:flutter/material.dart';
import '../model/Option.dart';

class OptionTile extends StatelessWidget {

    final Option option;

    OptionTile(
        this.option
    );

    AlertDialog showWinner(userOption) {
        return AlertDialog(
            title: Text("Winner"),
            content: Text(option.getMessageWinner(userOption))
        );
    }

    @override
    Widget build(BuildContext context) {
        return ListTile(
            leading: CircleAvatar(
                backgroundImage: NetworkImage(option.imageUrl)
            ),
            title: Text(option.name),
            subtitle: IconButton(
                icon: Align(alignment: Alignment.centerLeft, child:Icon(Icons.done_rounded)),
                onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                            return showWinner(option.name);
                        },
                    );
                }
            )
        );
    }
}