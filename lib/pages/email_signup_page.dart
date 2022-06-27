import 'package:flutter/material.dart';

import '../widgets/text_input_field_widget.dart';

class EmailSignupPage extends StatefulWidget {
  const EmailSignupPage({super.key, this.formFieldGap = 20});

  final double formFieldGap;

  @override
  State<EmailSignupPage> createState() => _EmailSignupPageState();
}

class _EmailSignupPageState extends State<EmailSignupPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.surface,
        iconTheme: Theme.of(context)
            .iconTheme
            .copyWith(color: Theme.of(context).colorScheme.surface),
        leading: IconButton(
          icon: Icon(Icons.adaptive.arrow_back_rounded),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text("Sign Up with Email"),
        centerTitle: true,
      ),
      body: Material(
        type: MaterialType.transparency,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const Spacer(),
                const TextInputField(label: "Email"),
                SizedBox(height: widget.formFieldGap),
                const TextInputField(label: "Password", obscureText: true),
                SizedBox(height: widget.formFieldGap),
                const TextInputField(
                  label: "Confirm password",
                  obscureText: true,
                ),
                SizedBox(height: widget.formFieldGap),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Sign Up"),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
