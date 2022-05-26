import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          leading: const Icon(Icons.fact_check_rounded),
          title: const Text("Sign Up"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
              child: Column(
            children: [
              TextFormField(
                autovalidateMode: AutovalidateMode.always,
                autofillHints: const [AutofillHints.email],
                //not for form, this will make the input suggest that the field wants email as input
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.mail_outline_rounded),
                    border: OutlineInputBorder(),
                    labelText: "Email : ",
                    hintText: "example@gmail.com"),

                cursorColor: Colors.red,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.always,
                autofillHints: const [AutofillHints.email],
                //not for form, this will make the input suggest that the field wants email as input
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.remove_red_eye_rounded),
                    border: OutlineInputBorder(),
                    labelText: "Create a Password : ",
                    hintText: "-should be aleast 8 characters"),

                cursorColor: Colors.red,
              ),
              const SizedBox(
                height: 10,
              )
            ],
          )),
        ));
  }
}
