import 'package:flutter/material.dart';
import 'package:model_contatos_flutter_app/helpers/contact_file.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  ContactHelper helper = ContactHelper();


  @override
  void initState() {
    super.initState();

    Contact c = Contact();
    c.name = "Caique Souza";
    c.email = "caique@gmail.com";
    c.phone = "1111111";
    c.img = "img";

    helper.saveContact(c);

    helper.getAllContacts().then((list) => print(list));
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
