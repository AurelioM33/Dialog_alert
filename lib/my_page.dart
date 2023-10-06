import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: showMyDialog,
          child: const Text('Show My Dialog'),
        ),
      ),
    );
  }

  showMyDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        actions: [
          TextButton(
            onPressed: () {
              // Botao para fechar o campo
              Navigator.pop(context);
            },
            child: const Text('Close'),
          ),
        ],
        title: const Text('Code Flutter'),
        content: const Text('This is my alert Dialog'),
      ),
    );
  }
}
