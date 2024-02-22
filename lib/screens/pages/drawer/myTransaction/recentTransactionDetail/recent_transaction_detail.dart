import 'package:flutter/material.dart';

class RecentTransactionDetail extends StatefulWidget {

  String referenceNo;

  RecentTransactionDetail({required this.referenceNo, super.key});

  @override
  State<RecentTransactionDetail> createState() => _RecentTransactionDetailState();
}

class _RecentTransactionDetailState extends State<RecentTransactionDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transaction Detail, ${widget.referenceNo}"),
      ),
    );
  }
}
