import 'package:appmovil/controller/us_controller.dart';
import 'package:appmovil/ui/login.dart';
import 'package:flutter/material.dart';

class PrincipalUSPage extends StatefulWidget {
  const PrincipalUSPage({super.key, this.pc = 3.0});

  final double pc;

  @override
  _PrincipalUSPageState createState() => _PrincipalUSPageState();
}

class _PrincipalUSPageState extends State<PrincipalUSPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final USController nameController = USController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.grey[850], // Fondo gris oscuro
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Container(
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF262626), Color(0xFF151515)],
                stops: [0.0, 1.0],
                begin: AlignmentDirectional(0.0, -1.0),
                end: AlignmentDirectional(0.0, 1.0),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 180,
                  child: Stack(
                    children: [
                      Container(
                        height: 240,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFCEA65B),
                              Color(0xFF9C742C),
                              Color(0x001E1E1E),
                            ],
                            stops: [0.0, 0.5, 0.95],
                            begin: AlignmentDirectional(0.0, -1.0),
                            end: AlignmentDirectional(0, 1.0),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 1.0),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 50, bottom: 24),
                          child: Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                              color: Colors.grey[600],
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: const Color(0xFF9C742C),
                                width: 2.0,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50.0),
                              child: const Icon(
                                Icons
                                    .person, // Reemplaza el uso de imágenes de red
                                size: 80,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50, top: 10),
                  child: Text(
                    nameController.getName(), // Texto genérico
                    style: const TextStyle(
                      fontSize: 32,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 25),
                  child: Text(
                    'Soporte', // Texto adicional
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFFEECC91), // Color dorado
                    ),
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.only(
                      left: 50, right: 40, top: 20, bottom: 20),
                  child: Text(
                    'Reporte', // Texto adicional
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 103, 103, 103), // Color dorado
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: GridView(
                    padding: EdgeInsets.zero,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 0.0,
                      mainAxisSpacing: 0.0,
                      childAspectRatio: 1,
                    ),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(
                            8), // Padding alrededor del container
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(
                              0, 230, 230, 230), // Color de fondo del container
                          borderRadius:
                              BorderRadius.circular(10), // Bordes redondeados
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 25, bottom: 25),
                                backgroundColor:
                                    const Color(0xFF9C742C), // Color del botón
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24),
                                ),
                              ),
                              onPressed: () {},
                              child: const Icon(
                                Icons.support_agent,
                                size: 40,
                                color: Colors.white, // Color del icono
                              ),
                            ),
                            const SizedBox(
                                height:
                                    10), // Espacio entre el botón y el texto
                            const Text(
                              'Administrar US', // Texto debajo del botón
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 10, // Tamaño del texto
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(
                            8), // Padding alrededor del container
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(
                              0, 230, 230, 230), // Color de fondo del container
                          borderRadius:
                              BorderRadius.circular(10), // Bordes redondeados
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 25, bottom: 25),
                                backgroundColor:
                                    const Color(0xFF9C742C), // Color del botón
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const LoginPage(),
                                    ));
                              },
                              child: const Icon(
                                Icons.person_search_rounded,
                                color: Colors.white,
                                size: 40, // Color del icono
                              ),
                            ),
                            const SizedBox(
                                height:
                                    10), // Espacio entre el botón y el texto
                            const Text(
                              'Administrar Cliente', // Texto debajo del botón
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 10, // Tamaño del texto
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100, top: 200),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.only(
                          left: 80, right: 80, top: 20, bottom: 20),
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'Cerrar sesión',
                      style: TextStyle(
                        color: Color.fromARGB(255, 35, 35, 35),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
