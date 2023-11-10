import 'components/wallet_list.dart';
import 'package:flutter/material.dart';

class Summarypage extends StatelessWidget {
  const Summarypage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        WalletList(),
        // ExpenseReport(),
        // LatestTransaction(),
      ],
    );
  }
}
