import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'Models/commentsModel.dart';
class NewScreen extends StatefulWidget {
  const NewScreen({super.key});

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  Future<List<CommentsModel>> getComments()async{
    final response=await http.get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));

    if(response.statusCode==200){
      final List data =jsonDecode(response.body.toString());
      return data.map((e)=>CommentsModel.fromJson(e)).toList();

    }else{
      throw Exception('Fail');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NEW API'),
      ),
      body:
          FutureBuilder(future: getComments(),
              builder: (context,snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('error'));
                }
                else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return const Center(child: Text('No data found'));
                }
                else {
                  final posts = snapshot.data!;
                  return ListView.builder(
                      itemCount: posts.length,
                      itemBuilder: (context, index) {
                        return Card(
                          margin: const EdgeInsets.all(8),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              posts[index].name!,
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                        );
                      }
                  );
                }
              }
                )



    );
  }
}


