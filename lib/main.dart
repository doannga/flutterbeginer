import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'card_listtile.dart';
import 'countapp.dart';
import 'exersise1.dart';


void main() {
  firstFunction();
  runApp(App());
}
String topLevel = 'Hello';

void firstFunction() {
  String secondLevel = 'Hi';
  print(topLevel);
  nestedFunction() {
    String thirdLevel = 'Howdy';
    print(topLevel);
    print(secondLevel);
    innerNestedFunction() {
      print(topLevel);
      print(secondLevel);
      print(thirdLevel);
    }
  }
  //print(thirdLevel);
}
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(title: 'Welcome to Flutter',
//         //home: MyApp1());
//         home: RamdomWords());
//   }
// }
//
// class RamdomWords extends StatefulWidget {
//   @override
//   _RandomWordState createState() {
//     return _RandomWordState();
//   }
// }
//
// class _RandomWordState extends State<RamdomWords> {
//   final _sugesstions = <WordPair>[];
//   final _biggerFont = const TextStyle(fontSize: 18);
//
//   // Tao mot Set luu lai nhung suggesstion dc save
//   final _saved = <WordPair>{};
//
//   // Create listview
//   Widget _buildSuggestion() {
//     return ListView.builder(
//         padding: const EdgeInsets.all(16),
//         // La 1 loop de add 10 word
//         itemBuilder: (BuildContext _context, int i) {
//           if (i.isOdd) {
//             return Divider();
//           }
//           final int index = i ~/ 2;
//           // index = 9 => add them 10 tu vao _suggestions
//           if (index >= _sugesstions.length) {
//             _sugesstions.addAll(generateWordPairs().take(10));
//           }
//           return _buildRow(_sugesstions[index]);
//         });
//   }
//
//   //Create row view
//   Widget _buildRow(WordPair word) {
//     final _savedWord = _saved.contains(word);
//     return ListTile(
//       title: Text(
//         word.asPascalCase,
//         style: _biggerFont,
//       ),
//       trailing: Icon(
//         _savedWord ? Icons.favorite : Icons.favorite_border,
//         color: _savedWord ? Colors.red : null,
//         semanticLabel: _savedWord ? 'Remove from _saved' : 'saved',
//       ),
//       onTap: () {
//         setState(() {
//           if (_savedWord) {
//             _saved.remove(word);
//           } else {
//             _saved.add(word);
//           }
//         });
//       },
//     );
//   }
//
//   void _pushSaved() {
//     Navigator.of(context).push(
//       MaterialPageRoute(
//         builder: (context) {
//           final tiles = _saved.map(
//             (word) {
//               return ListTile(
//                 title: Text(
//                   word.asPascalCase,
//                   style: _biggerFont,
//                 ),
//               );
//             },
//           );
//           final divided = tiles.isNotEmpty
//               ? ListTile.divideTiles(context: context, tiles: tiles).toList()
//               : <Widget>[];
//           return Scaffold(
//               appBar: AppBar(title: const Text('Saved Suggestion')),
//               body: ListView(children: divided));
//         },
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Welcome to Flutter'),
//         actions: [
//           IconButton(
//             onPressed: _pushSaved,
//             icon: Icon(Icons.list),
//             tooltip: 'Save suggestion',
//           ),
//         ],
//       ),
//       body: _buildSuggestion(),
//     );
//   }
// }
