import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../screens/all_import_screens.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
      children: const [
        BackgroundScreen(),
        Loginbox(),
      ],
    ));
  }
}

class Loginbox extends StatefulWidget {
  const Loginbox({super.key});

  @override
  State<Loginbox> createState() => _LoginboxState();
}

class _LoginboxState extends State<Loginbox> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  GoogleSignInAccount? _userObj;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  String url = "";
  String name = "";
  String email = "";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 50, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              child: MainHeading(
                title: "Hi!",
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 40,
                    sigmaY: 40,
                  ),
                  child: Container(
                    width: double.infinity,
                    // height: 300,
                    // height: double.infinity,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(197, 255, 255, 255)
                            .withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 30,
                      ),
                      child: Form(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Email
                              EmailInput(emailController: _emailController),
                              const SizedBox(height: 15),
                              // password
                              PasswordInput(
                                  passwordController: _passwordController),
                              const SizedBox(height: 15),
                              // login button
                              const LoginBtn(),
                              const SizedBox(height: 15),
                              // Frogetpassword
                              const ForgotPassword(),
                              // OR
                              const OrOption(),
                              // Don't have an account?
                              const AccountCreated(),
                              const SizedBox(height: 10),
                              // GoogleSignIn
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 40.0, vertical: 15.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  backgroundColor:
                                      const Color.fromARGB(255, 0, 0, 0),
                                ),
                                onPressed: () {
                                  _googleSignIn.signIn().then((userData) {
                                    setState(() {
                                      _userObj = userData;
                                      url = _userObj!.photoUrl.toString();
                                      name = _userObj!.displayName.toString();
                                      email = _userObj!.email;
                                    });
                                    if (userData != null) {
                                      // Navigator.pushReplacement(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //     builder: (context) => (Mainpage(
                                      //         // url: url,
                                      //         // name: name,
                                      //         // email: email,
                                      //         )),
                                      //   ),
                                      // );
                                    }
                                  }).catchError((e) {
                                    Fluttertoast.showToast(
                                        msg: e,
                                        toastLength: Toast.LENGTH_SHORT,
                                        gravity: ToastGravity.CENTER,
                                        timeInSecForIosWeb: 1,
                                        backgroundColor: Colors.red,
                                        textColor: Colors.white,
                                        fontSize: 16.0);
                                  });
                                },

                                // onPressed: (() {
                                //   _googleSignIn.signIn().then((value) => {
                                //         Navigator.push(
                                //           context,
                                //           MaterialPageRoute(
                                //             builder:
                                //                 (BuildContext context) {
                                //               return Main();
                                //             },
                                //           ),
                                //         ),
                                //       });
                                // }),

                                // UserAuthentication()
                                //     .signInWithGoogle(context);

                                //   signInWithGoogle(model)
                                //       .then((FirebaseUser user) {
                                //     model.clearAllModels();
                                //     Navigator.of(context)
                                //         .pushNamedAndRemoveUntil(
                                //             RouteName.Home,
                                //             (Route<dynamic> route) =>
                                //                 false);
                                //   }).catchError((e) => print(e));

                                child: Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    const CircleAvatar(
                                      radius: 10,
                                      backgroundColor: Colors.white,
                                      backgroundImage:
                                          AssetImage('./img/Google.png'),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    const Text(
                                      "Continue With Google",
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 16,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                              // Fb sign
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 40.0, vertical: 15.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  backgroundColor:
                                      const Color.fromARGB(255, 0, 0, 0),
                                ),
                                onPressed: (() {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text("test"),
                                    ),
                                  );
                                  // Navigator.push(context,
                                  //     MaterialPageRoute(builder:
                                  //         (BuildContext context) {
                                  //   return Mainpage();
                                  // }));
                                }),
                                child: const LowerPart(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LowerPart extends StatelessWidget {
  const LowerPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const CircleAvatar(
          radius: 10,
          backgroundImage: AssetImage('./img/fb.png'),
        ),
        const SizedBox(width: 20),
        const Text(
          "Continue With facebook",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 16,
            letterSpacing: 1,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class AccountCreated extends StatelessWidget {
  const AccountCreated({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Don't have an account? ",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 18,
            letterSpacing: 0.4,
          ),
        ),
        GestureDetector(
          // onTap: () => Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (ctx) => SignUp(),
          //   ),
          // ),
          child: const Text(
            "Sign up",
            style: TextStyle(
              color: Color.fromARGB(235, 0, 0, 0),
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.4,
            ),
          ),
        ),
      ],
    );
  }
}

class OrOption extends StatelessWidget {
  const OrOption({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Center(
        child: Text(
          "or",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () => Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (ctx) => ForgotPassword(),
      //   ),
      // ),
      child: const Text(
        "Forgot your password?",
        style: TextStyle(
          color: Color.fromARGB(235, 255, 255, 255),
          fontSize: 18,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.4,
        ),
      ),
    );
  }
}

class LoginBtn extends StatelessWidget {
  const LoginBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (() {
        // Navigator.push(context,
        //     MaterialPageRoute(builder:
        //         (BuildContext context) {
        //   return MyAppbar();
        // }));

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("This login function not working try google or FB"),
          ),
        );
        // final email = _emailController.text;
        //   final isValidFrom =
        //       fromKey.currentState!.validate();
        //   if (isValidFrom) {
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(
        //         builder: (ctx) => LoginScreen(
        //           email: _emailController.text,
        //         ),
        //       ),
        //     );
        //   }
      }),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          // color: Color.fromARGB(235, 8, 8, 7),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Center(
            child: Text(
          "Login",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
    );
  }
}

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    Key? key,
    required TextEditingController passwordController,
  })  : _passwordController = passwordController,
        super(key: key);

  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _passwordController,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 13,
        ),
        hintText: "password",
        filled: true,
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        fillColor: const Color.fromARGB(121, 255, 255, 255),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
              color: Color.fromARGB(121, 255, 255, 255), width: 3),
        ),
      ),
      // me commte
      // validator: (email) => email != null &&
      //         !EmailValidator.validate(email)
      //     ? "Enter a valid email"
      //     : null,
      // me commte
      textInputAction: TextInputAction.next,
    );
  }
}

class EmailInput extends StatelessWidget {
  const EmailInput({
    Key? key,
    required TextEditingController emailController,
  })  : _emailController = emailController,
        super(key: key);

  final TextEditingController _emailController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _emailController,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 13,
        ),
        hintText: "Email",
        filled: true,
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        fillColor: const Color.fromARGB(121, 255, 255, 255),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
              color: Color.fromARGB(121, 255, 255, 255), width: 3),
        ),
      ),
      // me commte
      // validator: (email) => email != null &&
      //         !EmailValidator.validate(email)
      //     ? "Enter a valid email"
      //     : null,
      // me commte
      textInputAction: TextInputAction.next,
    );
  }
}

class MainHeading extends StatelessWidget {
  const MainHeading({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
