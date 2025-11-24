import 'package:flutter/material.dart';
import 'package:graduation_project/core/extensions/extensions.dart';

class CustomCardAnswer extends StatelessWidget {
  const CustomCardAnswer({super.key});

  @override
  Widget build(BuildContext context) {
    var theme=context.textTheme;
    var color=context.colorScheme;
    return SizedBox(height: 77,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text('Answer Option',style: theme.titleSmall!.copyWith(fontSize: 17),),
              Spacer(),
              Icon(Icons.check_circle_outlined),
            ],
          ),
        ),
      ),
    );
  }
}
