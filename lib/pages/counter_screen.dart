import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador'),
      ),
      body: Center(
        //Abra error por este const
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$contador',
              style: const TextStyle(
                  fontSize: 80, fontWeight: FontWeight.w200, color: Colors.red),
            ),
            Text(
              'Click${contador == 1 ? '' : 's'}',
              style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w300,
                  color: Colors.blue),
            )
          ],
        ),
      ),
      floatingActionButton:
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
/*         FloatingActionButton(
          onPressed: () {
            setState(() {
              contador++;
            });
          },
          child: const Icon(Icons.plus_one),
        ), */
        CustomButton(
          onPressed: () {
            setState(() {
              contador++;
            });
          },
          icono: Icons.plus_one_outlined,
        ),
        CustomButton(
          onPressed: () {
            setState(() {
              if (contador == 0) return;
              contador--;
            });
          },
          icono: Icons.plus_one_outlined,
        ),
        CustomButton(
          onPressed: () {
            setState(() {
              contador++;
            });
          },
          icono: Icons.refresh_outlined,
        ),
      ]),
    );
  }
}

class CustomButton extends StatelessWidget {
  //Metodo para batones
  final IconData icono;
  final VoidCallback? onPressed;

  const CustomButton({super.key, required this.icono, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icono),
    );
  }
}
