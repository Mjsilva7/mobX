import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
          child: SingleChildScrollView(
            child: Card(
              margin: const EdgeInsets.symmetric(horizontal: 32),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FieldTitle(
                      title: 'Apelido',
                      subtitle: 'Como aparecer em seus anúncios.',
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Nome',
                        isDense: true,
                      ),
                    ),
                    const SizedBox(height: 16),
                    FieldTitle(
                      title: 'E-mail',
                      subtitle: 'Enviaremos um e-mail de confirmação.',
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'email@email.com',
                        isDense: true,
                      ),
                      keyboardType: TextInputType.emailAddress,
                      autocorrect: false,
                    ),
                    const SizedBox(height: 16),
                    FieldTitle(
                      title: 'Celular',
                      subtitle: 'Proteja sua conta.',
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: '(00) 9 0000-0000',
                        isDense: true,
                      ),
                      keyboardType: TextInputType.phone,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        TelefoneInputFormatter(),
                      ],
                    ),
                    const SizedBox(height: 16),
                    FieldTitle(
                      title: 'Senha',
                      subtitle: 'Use letras, números e caracteres especiais.',
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        isDense: true,
                      ),
                      obscureText: true,
                    ),
                    const SizedBox(height: 16),
                    FieldTitle(
                      title: 'Confirmar senha',
                      subtitle: 'Repita a senha.',
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        isDense: true,
                      ),
                      obscureText: true,
                    ),
                    Container(
                      height: 40,
                      margin: const EdgeInsets.only(top: 20, bottom: 12),
                      child: RaisedButton(
                        color: Colors.orange,
                        child: Text('Cadastrar'),
                        textColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Divider(color: Colors.black),
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Já tem conta?',
                              style: TextStyle(fontSize: 16),
                            ),
                            GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text(
                                  'Entrar',
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Colors.purple,
                                    fontSize: 16,
                                  ),
                                )),
                          ],
                        ))
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
