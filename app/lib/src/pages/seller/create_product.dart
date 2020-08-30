import 'dart:io';

import 'package:abarrotify/src/widgets/appbar.dart';
import 'package:flutter/material.dart';

class CreateProductPage extends StatefulWidget {
  static String id = 'create_product_page';

  @override
  _CreateProductPageState createState() => _CreateProductPageState();
}

class _CreateProductPageState extends State<CreateProductPage> {
  final GlobalKey formKey = GlobalKey<FormState>();
  final GlobalKey scaffoldKey = GlobalKey<ScaffoldState>();

  bool _saving = false;
  File photo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: CustomAppBar(
        appBar: AppBar(),
        icon: Icons.photo_size_select_actual,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _showPhoto(),
                const SizedBox(height: 30),
                _createName(),
                const SizedBox(height: 20),
                _createPrice(),
                const SizedBox(height: 20),
                _createStock(),
                const SizedBox(height: 20),
                _createButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _showPhoto() {
    return IconButton(
      icon: Icon(
        Icons.photo_size_select_actual,
        color: Colors.greenAccent[700],
        size: 30,
      ),
      onPressed: () {},
    );
  }

  Widget _createName() {
    return TextFormField(
      initialValue: 'producto',
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        labelText: 'Nombre del producto',
      ),
      //TODO Add saving functionality
      onSaved: (String name) => Function,
    );
  }

  Widget _createPrice() {
    return TextFormField(
      initialValue: 20.toString(),
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        labelText: 'Precio',
      ),
      //TODO Add saving functionality
      onSaved: (String price) => Function,
    );
  }

  Widget _createStock() {
    return TextFormField(
      initialValue: 1.toString(),
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        labelText: 'Cantidad disponible',
      ),
      //TODO Add saving functionality
      onSaved: (String stock) => Function,
    );
  }

  Widget _createButton() {
    return RaisedButton.icon(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      color: Colors.greenAccent[700],
      textColor: Colors.white,
      label: const Text('Registrar producto'),
      icon: const Icon(Icons.save),
      //TODO Add saving functionality
      onPressed: () {},
    );
  }
}
