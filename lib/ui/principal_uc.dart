import 'package:appmovil/controller/uc_controller.dart';
import 'package:flutter/material.dart';

class PrincipalUCPage extends StatefulWidget {
  const PrincipalUCPage({super.key, this.pc = 3.0});

  final double pc;

  @override
  _PrincipalUCPageState createState() => _PrincipalUCPageState();
}


class _PrincipalUCPageState extends State<PrincipalUCPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final UCController nameController = UCController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  padding: const EdgeInsets.only(left: 50, top: 10),
                  child: Text(
                    nameController.getName(), // Acceder al texto del controlador
                    style: const TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 25),
                  child: Text(
                    'Coordinador', // Texto adicional
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFFEECC91), // Color dorado
                    ),
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.only(left: 50, right: 40, top: 20, bottom: 20),
                  child: Text(
                    'Administracion', // Texto adicional
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 103, 103, 103), // Color dorado
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: GridView(
                    padding: EdgeInsets.zero,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 0.0,
                      mainAxisSpacing: 0.0,
                      childAspectRatio:3,
                    ),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(
                            8), // Padding alrededor del container
                        decoration: BoxDecoration(
                          color:
                              Color.fromARGB(0, 230, 230, 230), // Color de fondo del container
                          borderRadius:
                              BorderRadius.circular(10), // Bordes redondeados
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.only(left: 30, right: 30, top: 35, bottom: 35),
                                backgroundColor:
                                    const Color(0xFF9C742C), // Color del botón
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24),
                                ),
                              ),
                              onPressed: () {

                              },
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
                                fontSize: 14, // Tamaño del texto
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(
                            8), // Padding alrededor del container
                        decoration: BoxDecoration(
                          color:
                              Color.fromARGB(0, 230, 230, 230), // Color de fondo del container
                          borderRadius:
                              BorderRadius.circular(10), // Bordes redondeados
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.only(left: 30, right: 30, top: 35, bottom: 35),
                                backgroundColor:
                                    const Color(0xFF9C742C), // Color del botón
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24),
                                ),
                              ),
                              onPressed: () {

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
                                fontSize: 14, // Tamaño del texto
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(
                            8), // Padding alrededor del container
                        decoration: BoxDecoration(
                          color:
                              Color.fromARGB(0, 230, 230, 230), // Color de fondo del container
                          borderRadius:
                              BorderRadius.circular(10), // Bordes redondeados
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.only(left: 30, right: 30, top: 35, bottom: 35),
                                backgroundColor:
                                    const Color(0xFF9C742C), // Color del botón
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24),
                                ),
                              ),
                              onPressed: () {

                              },
                              child: const Icon(
                                Icons.favorite_border_rounded,
                                color: Colors.white,
                                size: 40, // Color del icono
                              ),
                            ),
                            const SizedBox(
                                height:
                                    10), // Espacio entre el botón y el texto
                            const Text(
                              'Puntuar reporte', // Texto debajo del botón
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 14, // Tamaño del texto
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 25, top: 25),
                  child: Text(
                    'Reportes', // Texto adicional
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 103, 103, 103), // Color dorado
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: GridView(
                    padding: EdgeInsets.zero,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 0.0,
                      mainAxisSpacing: 0.0,
                      childAspectRatio:3,
                    ),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(
                            8), // Padding alrededor del container
                        decoration: BoxDecoration(
                          color:
                              Color.fromARGB(0, 230, 230, 230), // Color de fondo del container
                          borderRadius:
                              BorderRadius.circular(10), // Bordes redondeados
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.only(left: 30, right: 30, top: 35, bottom: 35),
                                backgroundColor:
                                    const Color(0xFF9C742C), // Color del botón
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24),
                                ),
                              ),
                              onPressed: () {

                              },
                              child: const Icon(
                                size: 40,
                                Icons.article,
                                color: Colors.white, // Color del icono
                              ),
                            ),
                            const SizedBox(
                                height:
                                    10), // Espacio entre el botón y el texto
                            const Text(
                              'Reportes revisados', // Texto debajo del botón
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 14, // Tamaño del texto
                              ),
                            ),
                          ],
                        ),
                      ),
                                
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 840, top: 60),
                  child: ElevatedButton(
                    onPressed: () {
                      // Acción para cerrar sesión
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(left: 80, right: 80, top: 20, bottom: 20),
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
