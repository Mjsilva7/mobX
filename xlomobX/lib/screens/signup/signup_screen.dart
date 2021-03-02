import 'package:flutter/material.dart';
import 'package:xlomobX/screens/signup/components/field_title.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cadastro'),
          centerTitle: true,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Card(
            margin: const EdgeInsets.symmetric(horizontal: 32),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 8,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  FieldTitle(
                      title: 'Apelido',
                      subtitle: 'Como aparecer em seus anúncios.'),
                  FieldTitle(
                      title: 'E-mail',
                      subtitle: 'Enviaremos um e-mail de confirmação.'),
                  FieldTitle(title: 'Celular', subtitle: 'Proteja sua conta.'),
                  FieldTitle(
                      title: 'Senha',
                      subtitle: 'Use letras, números e caracteres especiais.'),
                  FieldTitle(
                      title: 'Confirmar senha', subtitle: 'Repita a senha.'),
                ],
              ),
            ),
          ),
        ));
  }
}
