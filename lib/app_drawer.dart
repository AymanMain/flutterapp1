import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(child: chid),
          ExpansionTile(
            leading: Icon(Icons.image),
            title: Text('Classification Images'),
            children: [
              ListTile(
                  title: Text('ANN'),
                  onTap: () {
                    Navigator.pushNamed(context, 'ann');
                  }),
              ListTile(title: Text('CNN'), onTap: () {}),
            ],
          ),
          ListTile(
            leading: Icon(Icons.price_change),
            title: Text('Stock Price Prediction'),
            onTap: () {
              Navigator.pushNamed(context, 'profile');
            },
          ),
          ListTile(
            leading: Icon(Icons.chat),
            title: Text('LLM'),
            onTap: () {
              Navigator.pushNamed(context, 'llm');
            },
          ),
          ListTile(
            leading: Icon(Icons.computer),
            title: Text('RAG'),
            onTap: () {
              Navigator.pushNamed(context, 'rag');
            },
          )
        ],
      ),
    );
  }
}
