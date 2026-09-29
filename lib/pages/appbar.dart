import 'package:flutter/material.dart';
import '../styles/appbar_styles.dart';
import '../styles/drawer_styles.dart';

class AppBarPage extends StatelessWidget {
  const AppBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppBarStyles.corFundo,
        elevation: 4,
        centerTitle: true,

        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: AppBarStyles.corIcone,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),

        title: const Text(
          "Exemplo AppBar",
          style: AppBarStyles.textoTitulo,
        ),

        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: AppBarStyles.corIcone,
            ),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Busca tocada"),
                ),
              );
            },
          ),

          IconButton(
            icon: const Icon(
              Icons.favorite,
              color: AppBarStyles.corIcone,
            ),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Favorito tocado"),
                ),
              );
            },
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: DrawerStyles.corCabecalho,
              ),
              child: const Text(
                "Menu de Opções",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(
                "Perfil",
                style: DrawerStyles.textoItem,
              ),
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Perfil selecionado"),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text(
                "Configurações",
                style: DrawerStyles.textoItem,
              ),
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Configurações selecionadas"),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text(
                "Notificações",
                style: DrawerStyles.textoItem,
              ),
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Notificações selecionadas"),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text(
                "Ajuda e Suporte",
                style: DrawerStyles.textoItem,
              ),
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Ajuda selecionada"),
                  ),
                );
              },
            ),
          ],
        ),
      ),

      body: const Center(
        child: Text("Conteúdo da tela"),
      ),
    );
  }
}