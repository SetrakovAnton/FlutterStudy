import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Контейнер Теория'),
      ),
      body: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.network(
                    'https://st1-le-go.get23.ru/lego-bionicle/lego-8587-panrahk-b8479522-imm33184-m.jpg')
                .image,
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(200),
        ),
      ),
    );
  }
}

// class MyContainer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Контейнер Теория'),
//       ),
//       body: Center(
//         child: Container(
//           decoration: BoxDecoration(
//             color: Colors.amber[600],
//             //shape: BoxShape.circle,
//             border: Border.all(),
//           ),
//           alignment: Alignment.center,
//           //width: 300,
//           //height: 300,
//           margin: const EdgeInsets.all(0.0),
//           padding: const EdgeInsets.all(0.0),
//           child: Text('Antoha'),
//         ),
//       ),
//     );
//   }
// }
