import 'package:flutter/material.dart';
import 'package:flutter_testing/core/widgets/widgets.dart';

class UserDetailLoading extends StatelessWidget {
  const UserDetailLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoadingView(message: 'Loading user...');
  }
}
