import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key, required this.team}) : super(key: key);

  final dynamic team;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobile Team'),
      ),
      body: Center(
        child: Card(
          elevation: 8,
          margin: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 150,
                width: 150,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(75),
                    child: Image.asset(
                      "assets/photos/people/${team["name"]}.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                team['name'],
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 10),
              Text(
                "Age: ${team['age']}",
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/photos/countries/${team["country"]}.png",
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    team['country'],
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text(
                  team['description'],
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}




// class DetailsPage extends StatelessWidget {
//   const DetailsPage({Key? key, required this.team}) : super(key: key);

//   final dynamic team;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Mobile Team'),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset(
//                     "assets/photos/people/${team["name"]}.png",
//                     height: 100,
//                     width: 100,
//                   )
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(team['name']),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     team['age'].toString(),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child:
//                   Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//                 Image.asset(
//                   "assets/photos/countries/${team["country"]}.png",
//                   width: 20,
//                   height: 20,
//                 ),
//                 Text(
//                   team['country'],
//                 )
//               ]),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Expanded(
//                     child: Text(
//                       team['description'],
                     
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
