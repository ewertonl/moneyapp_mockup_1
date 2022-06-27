import 'package:flutter/material.dart';

import 'email_signup_page.dart';
import '../styles/button_styles.dart';
import '../widgets/app_logo_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: 400,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 80, bottom: 40),
                  child: AppLogo(
                    size: 64,
                    logoColor: Theme.of(context).colorScheme.primary,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Get your Money Under Control",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Manage your expenses.\nSeamlessly.",
                      style: Theme.of(context).textTheme.caption,
                      textAlign: TextAlign.center,
                      textScaleFactor: 2,
                    ),
                    const SizedBox(height: 60),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext pagecontext) {
                        return const EmailSignupPage();
                      }),
                    );
                  },
                  child: const Text("Sign Up with Email ID"),
                ),
                const SizedBox(height: 10),
                ElevatedButton.icon(
                  onPressed: () {},
                  style: AppButtonStyle(context).secondaryButtonStyle,
                  icon: Image.asset(
                    "assets/logo_google.png",
                    height: 20,
                  ),
                  label: const Text(
                    "Sign Up with Google",
                    // style: Theme.of(context).textTheme.button?.copyWith(
                    //     fontWeight: FontWeight.bold,
                    //     color: Theme.of(context).colorScheme.onSurface),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?"),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Sign in",
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                              decoration: TextDecoration.underline,
                            ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
