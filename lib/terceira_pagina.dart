import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/nova_pagina_controller.dart';

class TerceiraPage extends StatelessWidget {
  //const NovaPage({Key? key}) : super(key: key);
  //var novaPagina = Get.put(NovaPagina());

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
            Text('Você está na TerceiraPagina',
                style: Theme.of(context).textTheme.headline4),
          ],
        ),
      ),
    );
  }
}
