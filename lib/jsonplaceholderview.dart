import 'package:flutter/cupertino.dart' as jsonplaceholderview;
import 'package:flutter/material.dart';

import 'json_place_holder_viewModel.dart';


class JsonPlaceHolderView extends JsonPlaceHolderViewModel {
  @override
  jsonplaceholderview.Widget build(jsonplaceholderview.BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: isLoading ? CircularProgressIndicator(
            valueColor: jsonplaceholderview.AlwaysStoppedAnimation<jsonplaceholderview.Color>(Colors.red))
            : jsonplaceholderview.Text("Jsonplaceholder"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () => getPost()),
      body: jsonplaceholderview.ListView.builder(
          itemCount: postModel.length,
          itemBuilder: (context, index) => Card(
            child: ListTile(
              title: jsonplaceholderview.Text(postModel[index].title.toString()),
              subtitle: jsonplaceholderview.Text(postModel[index].body.toString()),
              leading: jsonplaceholderview.Text(postModel[index].id.toString()),
            ),
          )),
    );
  }
}