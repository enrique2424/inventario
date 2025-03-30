
import 'package:flutter/material.dart';
import 'package:inventario/core/widgets/app_navbar.dart';

class InventarioPage extends StatefulWidget {
  const InventarioPage({Key? key}) : super(key: key);

  @override
  State<InventarioPage> createState() => _InventarioPageState();
}

class _InventarioPageState extends State<InventarioPage> {
  int _currentIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('Inventario'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(203, 33, 149, 243),
              ),
              child: Text(
                'Menú Principal',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.inventory),
              title: const Text('Inventario'),
              onTap: () {
                Navigator.pop(context);
                // Handle Inventario navigation
              },
            ),
            ListTile(
              leading: const Icon(Icons.point_of_sale),
              title: const Text('Ventas'),
              onTap: () {
                Navigator.pop(context);
                
              },
            ),
            ListTile(
              leading: const Icon(Icons.shopping_cart),
              title: const Text('Compras'),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  _currentIndex = 0;
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_balance_wallet),
              title: const Text('Ingresos-Gastos Extras'),
              onTap: () {
                Navigator.pop(context);
              
              },
            ),
            ListTile(
              leading: const Icon(Icons.bar_chart),
              title: const Text('Reportes'),
              onTap: () {
                Navigator.pop(context);
                
              },
            ),
            ListTile(
              leading: const Icon(Icons.local_shipping),
              title: const Text('Proveedor'),
              onTap: () {
                Navigator.pop(context);
                
              },
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text('Clientes'),
              onTap: () {
                Navigator.pop(context);
            
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          'Módulo de Inventario',
          style: TextStyle(fontSize: 18),
        ),
      ),
      floatingActionButton: AppNavBar(
        scaffoldKey: _scaffoldKey,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
