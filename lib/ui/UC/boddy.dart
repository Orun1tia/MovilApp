import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Boddy extends StatelessWidget {
  const Boddy({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        W1(),
        W2(),
      ],
    );
  }
}

class W1 extends StatelessWidget {
  const W1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Administración',
            style: TextStyle(color: Colors.grey, fontSize: 10.0)),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.86,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color:
                          Colors.orange, // Establece el color de fondo deseado
                      borderRadius: BorderRadius.circular(
                          8.0), // Opcional: agrega bordes redondeados al contenedor
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.support_agent,
                        size: 32,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        // Maneja la acción cuando se presiona el botón aquí
                      },
                    ),
                  ),
                  const Text('Administrar US',
                      style: TextStyle(color: Colors.white, fontSize: 10.0)),
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color:
                          Colors.orange, // Establece el color de fondo deseado
                      borderRadius: BorderRadius.circular(
                          8.0), // Opcional: agrega bordes redondeados al contenedor
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.person_search_rounded,
                        size: 32,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        // Maneja la acción cuando se presiona el botón aquí
                      },
                    ),
                  ),
                  const Text('Administrar Cliente',
                      style: TextStyle(color: Colors.white, fontSize: 10.0)),
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color:
                          Colors.orange, // Establece el color de fondo deseado
                      borderRadius: BorderRadius.circular(
                          8.0), // Opcional: agrega bordes redondeados al contenedor
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.favorite_border_rounded,
                        size: 32,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        // Maneja la acción cuando se presiona el botón aquí
                      },
                    ),
                  ),
                  const Text('Puntuar Reporte',
                      style: TextStyle(color: Colors.white, fontSize: 10.0)),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class W2 extends StatelessWidget {
  const W2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Administración',
            style: TextStyle(color: Colors.grey, fontSize: 10.0)),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.86,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color:
                          Colors.orange, // Establece el color de fondo deseado
                      borderRadius: BorderRadius.circular(
                          8.0), // Opcional: agrega bordes redondeados al contenedor
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.article,
                        size: 32,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        // Maneja la acción cuando se presiona el botón aquí
                      },
                    ),
                  ),
                  const Text('Reportes puntuados',
                      style: TextStyle(color: Colors.white, fontSize: 10.0)),
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color:
                          Colors.grey[850], // Establece el color de fondo deseado
                      borderRadius: BorderRadius.circular(
                          8.0), // Opcional: agrega bordes redondeados al contenedor
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.person_search_rounded,
                        size: 32,
                        color: Colors.grey[850],
                      ),
                      onPressed: () {
                        // Maneja la acción cuando se presiona el botón aquí
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color:
                          Colors.grey[850], // Establece el color de fondo deseado
                      borderRadius: BorderRadius.circular(
                          8.0), // Opcional: agrega bordes redondeados al contenedor
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.favorite_border_rounded,
                        size: 32,
                        color: Colors.grey[850],
                      ),
                      onPressed: () {
                        // Maneja la acción cuando se presiona el botón aquí
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
