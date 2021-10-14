import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/nova_pagina_controller.dart';
import 'package:getx/terceira_pagina.dart';

class NovaPage extends StatelessWidget {
  //const NovaPage({Key? key}) : super(key: key);
  var novaPagina = Get.put(NovaPagina());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Get X'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Você está na NovaPage',
                style: Theme.of(context).textTheme.headline4),
            GetX<NovaPagina>(builder: (controller) {
              return Text(
                '${controller.count.toString()}',
                style: Theme.of(context).textTheme.headline4,
              );
            }),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Get.to(TerceiraPage());
                },
                child: Text('Next'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          novaPagina.incrementCounter();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
