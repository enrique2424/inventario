
import 'package:flutter/material.dart';
import 'package:inventario/features/autentication/presentation/pages/nuevo_producto.dart';

class AppNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  final GlobalKey<ScaffoldState> scaffoldKey;

  const AppNavBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
    required this.scaffoldKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0, bottom: 16.0),
      child: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            builder: (BuildContext context) {
              return Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.add_box, color: Colors.blue, size: 30),
                              onPressed: () {
                                Navigator.pop(context);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const NuevoProducto(),
                                  ),
                                );
                              },
                            ),
                            const Text('Crear\nProducto', textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.warning, color: Colors.blue, size: 30),
                              onPressed: () {
                                Navigator.pop(context);
                                onTap(1);
                              },
                            ),
                            const Text('Productos\nReserva', textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.disabled_by_default, color: Colors.blue, size: 30),
                              onPressed: () {
                                Navigator.pop(context);
                                onTap(2);
                              },
                            ),
                            const Text('Merma', textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.picture_as_pdf, color: Colors.blue, size: 30),
                              onPressed: () {
                                Navigator.pop(context);
                                onTap(3);
                              },
                            ),
                            const Text('Exportar\nCatálogo', textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.view_list, color: Colors.blue, size: 30),
                              onPressed: () {
                                Navigator.pop(context);
                                onTap(4);
                              },
                            ),
                            const Text('Importar/\nExportar', textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.settings, color: Colors.blue, size: 30),
                              onPressed: () {
                                Navigator.pop(context);
                                onTap(5);
                              },
                            ),
                            const Text('Opciones\nInventario', textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        },
        backgroundColor: const Color.fromARGB(203, 33, 149, 243),
        elevation: 6.0,
        shape: const CircleBorder(),
        mini: false,
        child: const Icon(Icons.more_horiz, color: Colors.white),
      ),
    );
  }
}
