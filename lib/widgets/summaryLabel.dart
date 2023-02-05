import 'package:flutter/material.dart';

class SummaryLabelWidget extends StatelessWidget {
  SummaryLabelWidget({super.key, required this.label, this.value = ""});
  final String label;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.labelLarge,
        ),
        Text(
          value,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ],
    );
  }
}
