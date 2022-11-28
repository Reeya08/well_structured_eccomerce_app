import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child:  Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 28),
                child: Row(
                  children:  [
                     TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Nike Air Max',
                        hintStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Color(0xff40BFFF)),
                        ),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Color(0xff40BFFF),
                          size: 12,
                        ),
                        suffixIcon: const Icon(
                          Icons.close,
                          color: Color(
                            0xff223263,
                          ),
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.mic,
                      color: Color(
                        0xff223263,
                      ),
                      size: 12,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class CustomSearchDelegate extends SearchDelegate {
//   List<String> searchTerms = [
//     'Apple',
//     'Bannana',
//     'Pear',
//     'Watermelon',
//     'Peach',
//     'Oranges',
//     'Strawbarries',
//   ];
//
// // this section is to clear the query
//   @override
//   List<Widget>? buildActions(BuildContext context) {
//     return [
//       IconButton(
//         onPressed: () {
//           query = '';
//         },
//         icon: const Icon(
//           Icons.clear,
//         ),
//       ),
//     ];
//   }
//
// // to make sure you can leave or close tha search bar
//   @override
//   Widget? buildLeading(BuildContext context) {
//     return IconButton(onPressed: () {
//       close(context, null);
//     }, icon: Icon(Icons.arrow_back,),);
//   }
//
//   @override
//   Widget buildResults(BuildContext context) {
//     List<String> matchQuery = [];
//     for (var fruit in searchTerms) {
//       if (fruit.toLowerCase().contains(query.toLowerCase())) {
//         matchQuery.add(fruit);
//       }
//     }
//     return ListView.builder(itemBuilder: (context, index){
//        var result = matchQuery[index];
//        return ListTile(
//         title: Text(result),
//        );
//     },
//     );
//   }
//
//   @override
//   Widget buildSuggestions(BuildContext context) {
//     List<String> matchQuery = [];
//     for (var fruit in searchTerms) {
//       if (fruit.toLowerCase().contains(query.toLowerCase())) {
//         matchQuery.add(fruit);
//       }
//     }
//     return ListView.builder(itemBuilder: (context, index){
//       var result = matchQuery[index];
//       return ListTile(
//         title: Text(result),
//       );
//     },
//     );
//   }
// }
