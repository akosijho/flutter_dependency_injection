import 'package:dependency_injection/inherited_injection.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var appInfo = InheritedInjection.of(context)?.appInfo;
    return Scaffold(
      body: Center(
        child: Text(appInfo!.injected),
      ),
    );
  }
}
