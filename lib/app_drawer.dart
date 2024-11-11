import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  '../assets/images/logo.png',
                  height: 80,
                ),
                const SizedBox(height: 10),
                const Text(
                  'App Name',
                ),
              ],
            ),
          ),
          ExpansionTile(
            leading: const Icon(Icons.image),
            title: const Text('Classification Images'),
            children: [
              ListTile(
                title: const Text('ANN'),
                onTap: () {
                  Navigator.pushNamed(context, 'ann');
                },
              ),
              ListTile(
                title: const Text('CNN'),
                onTap: () {
                  Navigator.pushNamed(context, 'cnn');
                },
              ),
            ],
          ),
          ListTile(
            leading: const Icon(Icons.price_change),
            title: const Text('Stock Price Prediction'),
            onTap: () {
              Navigator.pushNamed(context, 'profile');
            },
          ),
          ListTile(
            leading: const Icon(Icons.chat),
            title: const Text('LLM'),
            onTap: () {
              Navigator.pushNamed(context, 'llm');
            },
          ),
          ListTile(
            leading: const Icon(Icons.computer),
            title: const Text('RAG'),
            onTap: () {
              Navigator.pushNamed(context, 'rag');
            },
          ),
        ],
      ),
    );
  }
}
