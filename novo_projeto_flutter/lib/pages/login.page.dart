import 'package:flutter/material.dart';
import 'package:novo_projeto_flutter/pages/list.page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 40,
            bottom: 40,
          ),
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.black12,
                      offset: new Offset(1, 2.0),
                      blurRadius: 10,
                      spreadRadius: 5,
                    )
                  ],
                ),
                height: 420,
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: ListView(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Bem Vindo!",
                            style: TextStyle(
                              fontSize: 27,
                              fontFamily: "Helvetica Neue",
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Text(
                              "Criar Conta",
                              style: TextStyle(
                                color: Colors.green,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text("Faça Login para continuar!",
                          style: TextStyle(fontSize: 17)),
                      SizedBox(
                        height: 40,
                      ),
                      TextFormField(
                        autofocus: false,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      TextFormField(
                        autofocus: false,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Senha",
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: FlatButton(
                          onPressed: () {},
                          child: Text("Esqueceu sua senha ?"),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(24)),
                        ),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) => ListPage(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text("Entrar",
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ), //Container maior
              SizedBox(
                height: 10,
              ),
              Text(
                "Ou se preferir",
                style: TextStyle(color: Colors.black, fontSize: 17),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffF8F8FF),
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                ),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                    ),
                    Image.asset(
                      "assets/google-logo.png",
                      height: 34,
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text("Login com o Google"),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffF8F8FF),
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                ),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                    ),
                    Image.asset(
                      "assets/facebookicon.png",
                      height: 24,
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text("   Login com o Facebook"),
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
